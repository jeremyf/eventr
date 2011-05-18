class Occurrence < ActiveRecord::Base
  belongs_to :event
  validates_presence_of :start_at
  attr_accessor :duration
end
