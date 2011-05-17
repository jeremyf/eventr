class Event < ActiveRecord::Base
  include ScheduleAttributes
  validates_presence_of :name
  attr_accessor :schedule_yaml
end