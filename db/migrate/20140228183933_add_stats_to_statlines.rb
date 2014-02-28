class AddStatsToStatlines < ActiveRecord::Migration
  def up
    add_column :statlines, :rebounds, :integer, default: 0
    add_column :statlines, :assists, :integer, default: 0
    add_column :statlines, :steals, :integer, default: 0
    add_column :statlines, :turnovers, :integer, default: 0
    add_column :statlines, :fouls, :integer, default: 0
  end

  def down
    remove_column :statlines, :rebounds
    remove_column :statlines, :assists
    remove_column :statlines, :steals
    remove_column :statlines, :turnovers
    remove_column :statlines, :fouls
  end
end
