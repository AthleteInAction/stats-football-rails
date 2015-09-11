class TeamSerializer < ActiveModel::Serializer
  
  attributes(
  	:id,
  	:name,
  	:short,
  	:roster,
  	:created_at,
  	:updated_at
  )

  def roster

  	if object.roster

  		object.roster.split(',').map { |n| n.to_i }.sort

  	else

  		[]

  	end

  end

end