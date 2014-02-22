class StatlineSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :player_id, :game_id, :points
  has_one :game
  has_one :player
end
