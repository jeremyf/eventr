require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
  should have_db_column :category_id
  should have_db_column :event_id
  should validate_presence_of :category_id
  should validate_presence_of :event_id
  should belong_to :event
  should belong_to :category
end
