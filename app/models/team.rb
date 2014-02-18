class Team < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :location

  has_many :players
  has_many :games
  has_many :stat_lines, through: :games

end
