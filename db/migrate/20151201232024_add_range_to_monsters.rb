class AddRangeToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :range_1, :boolean
    add_column :monsters, :range_2, :boolean
    add_column :monsters, :range_3, :boolean
    add_column :monsters, :range_4, :boolean
    add_column :monsters, :range_5, :boolean
    add_column :monsters, :distance_1, :string
    add_column :monsters, :distance_2, :string
    add_column :monsters, :distance_3, :string
    add_column :monsters, :distance_4, :string
    add_column :monsters, :distance_5, :string
    add_column :monsters, :target_1, :string
    add_column :monsters, :target_2, :string
    add_column :monsters, :target_3, :string
    add_column :monsters, :target_4, :string
    add_column :monsters, :target_5, :string
  end
end
