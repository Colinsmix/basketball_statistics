class StatlineSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :player_id, :game_id, :points, :rebounds, :assists, :steals, :turnovers, :fouls
  has_one :game
  has_one :player
end
