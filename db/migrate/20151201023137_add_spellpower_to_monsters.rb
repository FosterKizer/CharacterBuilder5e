class AddSpellpowerToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :s_ability_confirmation, :boolean
    add_column :monsters, :spellpower, :integer
    add_column :monsters, :mana, :integer
  end
end
