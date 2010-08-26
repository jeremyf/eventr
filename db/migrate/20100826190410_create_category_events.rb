class CreateCategoryEvents < ActiveRecord::Migration
  def self.up
    create_table :category_events do |t|
      t.integer :category_id
      t.integer :event_id

      t.timestamps
    end
    add_index :category_events, :category_id
    add_index :category_events, :event_id
    add_index :category_events, [:category_id, :event_id]
  end

  def self.down
    drop_table :category_events
  end
end
