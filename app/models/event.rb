class Event < ActiveRecord::Base
  include ScheduleAttributes
  attr_accessor :schedule_yaml

  validates_presence_of :name

  has_many :occurrences, :dependent => :destroy
  before_create :generate_occurrences
  protected
  def generate_occurrences
    schedule.all_occurrences.each do |occurrence|
      occurrences.build(:start_at => occurrence, :duration => schedule.duration)
    end
  end
end