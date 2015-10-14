class MatchFields1 < ActiveRecord::Migration
  def change

  	# TEAM
  	# ==========================================
  	# ==========================================
  	remove_column :teams,:color
  	# remove_column :teams,:object
  	add_column :teams,:primary,:string
  	add_column :teams,:secondary,:string
  	# ==========================================
  	# ==========================================

  	# GAME
  	# ==========================================
  	# ==========================================
  	add_column :games,:right_home,:boolean,default: true
  	# ==========================================
  	# ==========================================

  	# PLAYER
  	# ==========================================
  	# ==========================================
  	remove_column :players,:jersey
  	add_column :players,:used,:integer,default: 0
  	add_column :players,:number,:integer
  	add_column :players,:game_id,:integer
  	# ==========================================
  	# ==========================================

  	# SEQUENCES
  	# ==========================================
  	# ==========================================
  	add_column :sequences,:flagged,:boolean,default: false
  	# ==========================================
  	# ==========================================

  	# PLAYS
  	# ==========================================
  	# ==========================================
  	remove_column :plays,:penalty_key
  	remove_column :plays,:penalty_distance
  	remove_column :plays,:penalty_offset
  	remove_column :plays,:pos_id
  	add_column :plays,:team_id,:integer
  	# ==========================================
  	# ==========================================

  	# PENALTIES
  	# ==========================================
  	# ==========================================
  	remove_column :penalties,:pos_id
  	add_column :penalties,:team_id,:integer
  	# ==========================================
  	# ==========================================

  end
end