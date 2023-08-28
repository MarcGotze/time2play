class CreateGameToUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :game_to_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :boardgame, null: false, foreign_key: true
      t.boolean :owned

      t.timestamps
    end
  end
end
