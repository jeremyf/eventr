class RenameCategoryEvent < ActiveRecord::Migration
  def self.up
    rename_table :category_events, :categorizations
  end

  def self.down
    rename_table :categorizations, :category_events
  end
end