class Event < ActiveRecord::Base
  include ScheduleAttributes
  validates_presence_of :name
  has_many :occurrences, :dependent => :destroy
  attr_accessor :schedule_yaml

  before_create :generate_occurrences

  protected
  def generate_occurrences
    schedule.occurrences(:all).each do |occurrence|
      occurrences.build(:start_at => occurrence, :end_at => occurrence + schedule.duration)
    end
  end
end