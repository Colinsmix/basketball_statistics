class RenameTeamScores < ActiveRecord::Migration
  def up
    rename_column :games, :hteam_score, :hteamscore
    rename_column :games, :ateam_score, :ateamscore
  end

  def down
    rename_column :games, :hteamscore, :hteam_score
    rename_column :games, :ateamscore, :ateam_score
  end
end
