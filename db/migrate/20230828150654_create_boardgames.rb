class CreateBoardgames < ActiveRecord::Migration[7.0]
  def change
    create_table :boardgames do |t|
      t.string :title
      t.text :description
      t.integer :play_time
      t.integer :age
      t.string :image
      t.float :rating
      t.integer :min_player
      t.integer :max_player
      t.string :category

      t.timestamps
    end
  end
end
