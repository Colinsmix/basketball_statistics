class StatLine < ActiveRecord::Base

  validates_presence_of :player_id
  validates_presence_of :game_id

  belongs_to :player
  belongs_to :game


end
