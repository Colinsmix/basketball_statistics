class CreateStatlines < ActiveRecord::Migration
  def change
    create_table :statlines do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :points

      t.timestamps
    drop_table :stat_lines
    end
  end
end
