class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.integer :jersey
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
