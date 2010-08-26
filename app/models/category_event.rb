class CategoryEvent < ActiveRecord::Base
  validates_presence_of :event_id
  validates_presence_of :category_id
  belongs_to :event
  belongs_to :category
end
