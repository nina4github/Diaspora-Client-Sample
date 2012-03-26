class CreateAspects < ActiveRecord::Migration
  def self.up
    create_table :aspects do |t|
      t.string :name
      t.string :creator
      t.string :feedUrl

      t.timestamps
    end
  end

  def self.down
    drop_table :aspects
  end
end
