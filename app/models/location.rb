class Location < ActiveRecord::Base
  validates_presence_of :location
  validates_uniqueness_of :location
end
