class AddStrengthToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :strength, :string
    add_column :monsters, :climbing, :boolean
    add_column :monsters, :driving, :boolean
    add_column :monsters, :intimidation, :boolean
    add_column :monsters, :jumping, :boolean
    add_column :monsters, :might, :boolean
    add_column :monsters, :smithing, :boolean
  end
end
