require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should_have_db_column :persistence_token
  should_validate_uniqueness_of :login
  should_validate_uniqueness_of :email
end
