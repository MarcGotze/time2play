class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.references :boardgame, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
