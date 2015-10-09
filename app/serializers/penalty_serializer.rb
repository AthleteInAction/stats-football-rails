class PenaltySerializer < ActiveModel::Serializer

	attributes(
		:id,
		:game_id,
		:sequence_id,
		:team_id,
		:distance,
		:end_x,
		:enforcement,
		:player,
		:created_at,
		:updated_at
	)

end