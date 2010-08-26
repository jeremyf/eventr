class Event < ActiveRecord::Base
  validates_presence_of :name
  has_many :category_events, :dependent => :destroy
  has_many :categories, :through => :category_events
end
