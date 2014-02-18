class GameSerializer < ActiveModel::Serializer
  attributes :id, :hteam_id, :ateam_id, :hteam_score, :ateam_score, :winner_id
end
