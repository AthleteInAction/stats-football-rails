class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :game_id
      t.integer :sequence_id
      t.string :key
      t.integer :end_x
      t.integer :end_y
      t.integer :player_a
      t.integer :player_b
      t.string :penalty_key
      t.integer :penalty_distance
      t.boolean :penalty_offset
      t.integer :pos_id
      t.string :tackles
      t.string :sacks

      t.timestamps
    end
  end
end
