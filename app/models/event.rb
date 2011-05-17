class Event < ActiveRecord::Base
  validates_presence_of :name
  has_many :occurrences, :dependent => :destroy
end