require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should validate_uniqueness_of :name
  should validate_presence_of :name
  should have_db_column :name
  should have_db_column :url
end
