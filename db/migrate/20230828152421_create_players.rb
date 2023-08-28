class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.references :user, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true
      t.float :score
      t.boolean :game_master

      t.timestamps
    end
  end
end
