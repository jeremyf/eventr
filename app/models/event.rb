class Event < ActiveRecord::Base
  include ScheduleAttributes
  validates_presence_of :name
  has_many :occurrences, :dependent => :destroy
  attr_accessor :schedule_yaml
end