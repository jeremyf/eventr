require 'spec_helper'

describe Occurrence do
  subject { Occurrence.new(:event_id => 1) }

  # validations
  it { should_not accept_values_for(:start_at, nil)}
  it { should_not accept_values_for(:event_id, nil)}
  it { should accept_values_for(:end_at, nil)}

  describe "#end_at" do
    it 'without duration will be nil' do
      subject.start_at = Time.now
      subject.end_at.should be_nil

      subject.save!
      subject.reload

      subject.end_at.should be_nil
    end

    it 'with duration will be calculated from start date' do
      start_at = Time.now
      duration = 60*60
      subject.start_at = start_at
      subject.duration = duration
      subject.end_at.utc.to_time.should == (start_at + duration).utc.to_time

      subject.save!
      subject.reload

      subject.end_at.utc.to_s.should == (start_at + duration).utc.to_s
    end
  end
end
