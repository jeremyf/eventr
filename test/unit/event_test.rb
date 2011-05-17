require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_db_column :name
  should validate_presence_of :name

  should 'respond to .schedule' do
    assert_respond_to Event.new, :schedule
  end

  should have_many :occurrences

  should 'create one occurrence for a single event' do
    now = Time.now
    assert_difference 'Occurrence.count' do
      Event.create!(:name => 'My name', :schedule_attributes => {:repeat => '0', :date => now.to_s, :duration => 60*60 })
    end
  end
end
