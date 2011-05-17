class CreateOccurrences < ActiveRecord::Migration
  def self.up
    create_table :occurrences do |t|
      t.integer :event_id
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
    add_index :occurrences, :event_id
    add_index :occurrences, :start_at
    add_index :occurrences, :end_at
  end

  def self.down
    drop_table :occurrences
  end
end
