class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_id, :position, :height, :weight, :firstname, :lastname
end
