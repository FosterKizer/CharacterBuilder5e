class AddOtherToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :accuracy_other_check, :boolean
    add_column :monsters, :accuracy_other, :string
    add_column :monsters, :communication_other_check, :boolean
    add_column :monsters, :communication_other, :string
    add_column :monsters, :constitution_other_check, :boolean
    add_column :monsters, :constitution_other, :string
    add_column :monsters, :dexterity_other_check, :boolean
    add_column :monsters, :dexterity_other, :string
    add_column :monsters, :fighting_other_check, :boolean
    add_column :monsters, :fighting_other, :string
    add_column :monsters, :intelligence_other_check, :boolean
    add_column :monsters, :intelligence_other, :string
    add_column :monsters, :perception_other_check, :boolean
    add_column :monsters, :perception_other, :string
    add_column :monsters, :strength_other_check, :boolean
    add_column :monsters, :strength_other, :string
    add_column :monsters, :willpower_other_check, :boolean
    add_column :monsters, :willpower_other, :string
  end
end
