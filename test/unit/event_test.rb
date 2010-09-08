require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should have_db_column :name
  should have_db_column :start_at
  should have_db_column :end_at
  should validate_presence_of :name
  should have_many :categorizations
  should have_many :categories
end
