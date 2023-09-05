class AddDefaultValueToPlayers < ActiveRecord::Migration[7.0]
  def change
    change_column :players, :score, :integer, default: 0
    change_column :challenges, :score, :integer, default: 0
    change_column :challenges, :victory, :integer, default: 0
  end
end
