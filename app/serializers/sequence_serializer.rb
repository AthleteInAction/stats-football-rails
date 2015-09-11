class SequenceSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:game_id,
  	:pos_id,
  	:qtr,
  	:key,
  	:down,
  	:fd,
  	:start_x,
  	:stary_y,
  	:replay,
  	:created_at,
  	:updated_at
  	)

end