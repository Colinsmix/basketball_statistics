class PlayerSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :team_id, :position, :height, :weight, :firstname, :lastname
  has_one :team
end
