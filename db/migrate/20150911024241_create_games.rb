class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :start_time
      t.integer :away_id
      t.integer :home_id

      t.timestamps
    end
  end
end
