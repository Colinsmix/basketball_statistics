class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id, null: false
      t.string :position, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.string :firstname, null: false
      t.string :lastname, null: false

      t.timestamps
    end
  end
end
