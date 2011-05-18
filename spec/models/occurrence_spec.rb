require 'spec_helper'

describe Occurrence do
  subject { Occurrence.new(:event_id => 1) }

  # validations
  it { should_not accept_values_for(:start_at, nil)}
  it { should_not accept_values_for(:event_id, nil)}
  it { should accept_values_for(:end_at, nil)}

  describe "#create" do
    it 'without duration generates nil end_at' do
      subject.start_at = Time.now
      subject.end_at.should be_nil
    end

    it 'with duration generates end_at' do
      start_at = Time.now
      duration = 60*60
      subject.start_at = start_at
      subject.duration = duration
      subject.end_at.should == (start_at + duration)
    end
  end
end
