require 'spec_helper'

describe Event do
  subject { Event.new(:name => 'My name') }
  it { should_not accept_values_for(:name, '', nil)}

  describe '#create' do

    it 'can create occurrence(s) without end time' do
      subject.schedule_attributes = {:repeat => '0', :date => Time.now.to_s }
      lambda {subject.save!}.should change(Occurrence, :count).by(1)
    end

    it 'also creates one occurrence for a non-repeating event' do
      subject.schedule_attributes = {:repeat => '0', :date => Time.now.to_s, :duration => 60*60 }
      lambda {subject.save!}.should change(Occurrence, :count).by(1)
    end

    it 'also creates multiple occurrences for a repeating event' do
      now = Time.now
      future = 3.days.since(now)
      subject.schedule_attributes = {:repeat => '1', :start_date => now.to_s, :duration => 60*60, :interval_unit => 'day', :interval => 1, :until_date => future.to_s, :ends => 'eventually' }
      lambda {subject.save!}.should change(Occurrence, :count).by(4)
    end


  end

end
