class Team < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :location

  has_many :players
  has_many :homegames, class_name: 'Game', foreign_key: :hteam_id
  has_many :awaygames, class_name: 'Game', foreign_key: :ateam_id
  has_many :stat_lines, through: :games

end
