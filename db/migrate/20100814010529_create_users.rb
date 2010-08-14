class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :persistence_token

      t.timestamps
    end
    add_index :users, :login, :unique => true
    add_index :users, :email, :unique => true
    add_index :users, :persistence_token
  end

  def self.down
    remove_index :users, :login
    add_index :users, :email
    add_index :users, :persistence_token
    
    drop_table :users
  end
end