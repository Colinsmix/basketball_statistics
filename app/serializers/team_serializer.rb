class TeamSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :location
  has_many :players
  has_many :games
end
