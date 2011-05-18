class Occurrence < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :start_at
  validates_presence_of :event_id

  attr_accessor :duration

  def end_at
    super || (duration ? start_at + duration : nil)
  end
end
