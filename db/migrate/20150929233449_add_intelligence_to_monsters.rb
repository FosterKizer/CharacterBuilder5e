class AddIntelligenceToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :intelligence, :string
    add_column :monsters, :arcane_lore, :boolean
    add_column :monsters, :brewing, :boolean
    add_column :monsters, :cartography, :boolean
    add_column :monsters, :cryptography, :boolean
    add_column :monsters, :cultural_lore, :boolean
    add_column :monsters, :engineering, :boolean
    add_column :monsters, :evaluation, :boolean
    add_column :monsters, :healing, :boolean
    add_column :monsters, :heraldry, :boolean
    add_column :monsters, :historical_lore, :boolean
    add_column :monsters, :military_lore, :boolean
    add_column :monsters, :musical_lore, :boolean
    add_column :monsters, :natural_lore, :boolean
    add_column :monsters, :navigation, :boolean
    add_column :monsters, :religious_lore, :boolean
    add_column :monsters, :research, :boolean
    add_column :monsters, :writing, :boolean
  end
end
