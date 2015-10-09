class CreatePenalties < ActiveRecord::Migration
  def change
    create_table :penalties do |t|
      t.integer :game_id
      t.integer :sequence_id
      t.integer :pos_id
      t.integer :distance
      t.integer :end_x
      t.string :enforcement
      t.integer :player

      t.timestamps
    end
  end
end
