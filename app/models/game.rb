class Game < ActiveRecord::Base

  validates_presence_of :hteam_id
  validates_presence_of :ateam_id
  validates_presence_of :hteam_score
  validates_presence_of :ateam_score

  belongs_to :hteam, class_name: 'Team', foreign_key: :hteam_id
  belongs_to :ateam, class_name: 'Team', foreign_key: :ateam_id


  has_many :stat_lines
  has_many :teams
  has_many :players, through: :teams

end
