class PlayerSerializer < ActiveModel::Serializer
	
	attributes(
		:id,
		:team_id,
		:first_name,
		:last_name,
		:created_at,
		:updated_at
		)

end