require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_db_column :persistence_token
  should validate_uniqueness_of :login
  should validate_uniqueness_of :email
end
