class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :meal
      t.string :ingredients
      t.timestamp :time_eaten

      t.timestamps
    end
  end

  def self.down
    drop_table :foods
  end
end
