class CreateReactions < ActiveRecord::Migration
  def self.up
    create_table :reactions do |t|
      t.integer :severity
      t.string :description
      t.timestamp :time_first_observed

      t.timestamps
    end
  end

  def self.down
    drop_table :reactions
  end
end
