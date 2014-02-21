class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :players, embed: :ids, include: true
  has_many :homegames, embed: :ids, key: :game_ids
  has_many :awaygames, embed: :ids, key: :game_ids
end
