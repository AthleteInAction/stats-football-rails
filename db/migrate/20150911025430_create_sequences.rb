class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.integer :game_id
      t.integer :pos_id
      t.integer :qtr
      t.string :key
      t.integer :down
      t.integer :fd
      t.integer :start_x
      t.integer :start_y
      t.boolean :replay

      t.timestamps
    end
  end
end
