class CreateStatLines < ActiveRecord::Migration
  def change
    create_table :stat_lines do |t|
      t.integer :player_id, null: false
      t.integer :game_id, null: false
      t.integer :points, null: false

      t.timestamps
    end
  end
end
