class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.integer :presentation_sequence
      t.timestamps
    end
    add_index :categories, :name
    add_index :categories, :parent_id
    add_index :categories, [:parent_id, :presentation_sequence]
    add_index :categories, [:parent_id, :name], :unique => true
  end

  def self.down
    drop_table :categories
  end
end
