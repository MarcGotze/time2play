class AddCompletedToAchievement < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :completed, :boolean, default: false
  end
end
