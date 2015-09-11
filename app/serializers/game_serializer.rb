class GameSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:start_time,
  	:away_id,
  	:home_id,
  	:created_at,
  	:updated_at
  	)

  has_one :away,key: :away_id
  has_one :home,key: :home_id

end