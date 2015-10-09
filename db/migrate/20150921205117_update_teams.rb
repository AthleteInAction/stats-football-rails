class UpdateTeams < ActiveRecord::Migration
  def change

  	add_column :teams,:color,:string
  	remove_column :teams,:roster

  end
end