class AddColumnsToChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :score, :integer
    add_column :challenges, :victory, :integer
  end
end
