class GameSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :hteam_id, :ateam_id, :hteamscore, :ateamscore
  has_many :statlines
end
