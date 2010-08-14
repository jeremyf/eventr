class User < ActiveRecord::Base
  validates_uniqueness_of :login, :case_sensitive => true, :present => true
  validates_uniqueness_of :email, :case_sensitive => true, :present => true
end
