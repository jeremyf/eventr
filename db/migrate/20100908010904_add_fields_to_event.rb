class AddFieldsToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :start_at, :timestamp
    add_column :events, :end_at, :timestamp
    add_index :events, :start_at
    add_index :events, :end_at
  end

  def self.down
    remove_column :events, :start_at
    remove_column :events, :end_at
  end
end