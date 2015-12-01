class AddRatingToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :speed, :integer
    add_column :monsters, :health, :integer
    add_column :monsters, :defense, :integer
    add_column :monsters, :armor, :integer
  end
end
