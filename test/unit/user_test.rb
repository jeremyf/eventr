require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_db_column :encrypted_password
  should have_db_column :email
  should validate_uniqueness_of :email
end
