class RemoveNullFromDate < ActiveRecord::Migration
  def up
    remove_column :games, :game_date
    add_column :games, :game_date, :datetime
  end
  def down
    remove_column :games, :game_date
    add_column :games, :game_date, :datetime, null: false
  end
end
