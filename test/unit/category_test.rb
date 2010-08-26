require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should validate_presence_of :name
  should have_db_column :name
  should have_db_column :parent_id
  should have_db_column :presentation_sequence
end
