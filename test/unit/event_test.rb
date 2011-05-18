require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_db_column :name
  should validate_presence_of :name

  should have_many :occurrences

  should 'create one occurrence for a single event' do
    now = Time.now
    assert_difference 'Occurrence.count' do
      Event.create!(:name => 'My name', :schedule_attributes => {:repeat => '0', :date => now.to_s, :duration => 60*60 })
    end
  end

  should 'create multiple occurrences for a repeating event' do
    now = Time.now
    repeats = 3
    future = repeats.days.since(now)
    assert_difference 'Occurrence.count', repeats + 1 do
      Event.create!(:name => 'My name', :schedule_attributes => {:repeat => '1', :start_date => now.to_s, :duration => 60*60, :interval_unit => 'day', :interval => 1, :until_date => future.to_s, :ends => 'eventually' })
    end
  end
end
