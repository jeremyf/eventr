class Event < ActiveRecord::Base
  self.per_page = 40
  validates_presence_of :name
  has_many :categorizations, :dependent => :destroy
  has_many :categories, :through => :categorizations
end
