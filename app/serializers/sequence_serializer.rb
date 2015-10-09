class SequenceSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:game_id,
  	:team_id,
  	:qtr,
  	:key,
  	:down,
  	:fd,
  	:start_x,
  	:start_y,
  	:replay,
    :flagged,
  	:created_at,
  	:updated_at
  	)

end