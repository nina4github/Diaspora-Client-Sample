class CreateAspects < ActiveRecord::Migration
  def change
    create_table :aspects do |t|
      t.string :name
      t.string :creator
      t.int :feed_id

      t.timestamps
    end
  end

end
