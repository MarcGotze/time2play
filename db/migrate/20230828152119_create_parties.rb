class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.references :boardgame, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
