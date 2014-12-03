class CreateGamings < ActiveRecord::Migration
  def change
    create_table :gamings do |t|
      t.belongs_to :player
      t.belongs_to :game
      t.boolean :won
      t.integer :final_index
      t.integer :player_number

      t.timestamps
    end
  end
end
