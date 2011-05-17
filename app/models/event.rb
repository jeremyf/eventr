class Event < ActiveRecord::Base
  include ScheduleAttributes
  validates_presence_of :name
end