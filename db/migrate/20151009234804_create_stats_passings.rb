class CreateStatsPassings < ActiveRecord::Migration
  def change
    create_table :stats_passings do |t|
      t.integer :game_id
      t.integer :team_id
      t.integer :player
      t.integer :att
      t.integer :comp
      t.integer :yds
      t.integer :td
      t.integer :int
      t.integer :long

      t.timestamps
    end
  end
end