class Team < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :location

  validates_uniqueness_of :name, :scope => :location

  has_many :players
  has_many :homegames, class_name: 'Game', foreign_key: :hteam_id
  has_many :awaygames, class_name: 'Game', foreign_key: :ateam_id
  has_many :statlines, through: :games

  def games
    homegames + awaygames
  end

end
