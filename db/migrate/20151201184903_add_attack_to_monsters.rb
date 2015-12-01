class AddAttackToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :weapon_1, :string
    add_column :monsters, :attack_1, :string
    add_column :monsters, :damage_1, :string
    add_column :monsters, :weapon_2, :string
    add_column :monsters, :weapon_3, :string
    add_column :monsters, :weapon_4, :string
    add_column :monsters, :weapon_5, :string
    add_column :monsters, :attack_2, :string
    add_column :monsters, :attack_3, :string
    add_column :monsters, :attack_4, :string
    add_column :monsters, :attack_5, :string
    add_column :monsters, :damage_2, :string
    add_column :monsters, :damage_3, :string
    add_column :monsters, :damage_4, :string
    add_column :monsters, :damage_5, :string
  end
end
