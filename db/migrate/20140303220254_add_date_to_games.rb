class AddDateToGames < ActiveRecord::Migration
  def up
    add_column :games, :game_date, :datetime, null: false
  end

  def down
    remove_column :games, :game_date
  end
end
