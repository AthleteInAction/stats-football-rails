class ChangePosIdToTeamId < ActiveRecord::Migration
  def change
  	rename_column :sequences,:pos_id,:team_id
  end
end