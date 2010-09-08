require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_db_column :name
  should have_db_column :start_time
  should have_db_column :end_time
  should validate_presence_of :name
  should have_many :categorizations
  should have_many :categories
end
