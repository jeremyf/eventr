require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_db_column :name
  should validate_presence_of :name

  should 'respond to .schedule' do
    assert_respond_to Event.new, :schedule
  end
end
