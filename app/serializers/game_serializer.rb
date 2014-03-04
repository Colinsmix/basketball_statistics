class GameSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :hteam_id, :ateam_id, :hteamscore, :ateamscore, :game_date
  has_many :statlines
end
