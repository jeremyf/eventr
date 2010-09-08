class AddFieldsToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
    add_index :events, :start_time
    add_index :events, :end_time
  end

  def self.down
    remove_column :events, :start_time, :string
    remove_column :events, :end_time, :string
  end
end