class PlaySerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:game_id,
  	:sequence_id,
  	:key,
  	:end_x,
  	:end_y,
  	:player_a,
  	:player_b,
  	:penalty_key,
  	:penalty_offset,
  	:pos_id,
  	:tackles,
  	:sacks,
  	:created_at,
  	:updated_at
  	)

end