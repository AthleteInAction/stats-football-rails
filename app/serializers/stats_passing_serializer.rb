class StatsPassingSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:game_id,
  	:team_id,
  	:player,
  	:att,
  	:comp,
  	:yds,
  	:td,
  	:int,
  	:long
  	:created_at,
  	:updated_at
  )

end