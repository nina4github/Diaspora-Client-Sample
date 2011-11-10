class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :activity_name
      t.integer :counter
      t.datetime :timestamp

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
