class Game < ActiveRecord::Base

  validates_presence_of :hteam_id
  validates_presence_of :ateam_id
  validates_presence_of :hteam_score
  validates_presence_of :ateam_score

  belongs_to :team

  has_many :stat_lines
  has_many :teams
  has_many :players, through: :teams

end
