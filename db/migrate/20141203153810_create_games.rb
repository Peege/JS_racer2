class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :url
      t.boolean :finish
      t.float :total_time

      t.timestamps
    end
  end
end
