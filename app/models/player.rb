class Player < ActiveRecord::Base

  validates_presence_of :team_id
  validates_presence_of :position
  validates_presence_of :height
  validates_presence_of :weight
  validates_presence_of :firstname
  validates_presence_of :lastname

  belongs_to :team

  has_many :stat_lines

end
