class AddRosterToTeams < ActiveRecord::Migration
  def change

  	add_column :teams,:roster,:text

  end
end