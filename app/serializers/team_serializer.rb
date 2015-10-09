class TeamSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:name,
  	:short,
  	:primary,
  	:secondary,
  	:created_at,
  	:updated_at
  )

end