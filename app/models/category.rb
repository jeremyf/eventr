class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :parent_id
  has_many :categorizations, :dependent => :destroy
  has_many :events, :through => :categorizations
end
