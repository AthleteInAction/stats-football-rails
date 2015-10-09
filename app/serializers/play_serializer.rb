class PlaySerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:game_id,
  	:sequence_id,
    :team_id,
  	:key,
  	:end_x,
  	:end_y,
  	:player_a,
  	:player_b,
  	:tackles,
  	:sacks,
  	:created_at,
  	:updated_at
  	)

end