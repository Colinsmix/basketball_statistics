class StatLineSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :game_id, :points
end
