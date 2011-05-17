require 'test_helper'

class OccurrenceTest < ActiveSupport::TestCase
  should belong_to :event
  should have_db_column :event_id
  should have_db_column :start_at
  should have_db_column :end_at
end
