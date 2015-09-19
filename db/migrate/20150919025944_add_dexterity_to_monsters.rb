class AddDexterityToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :dexterity, :string
    add_column :monsters, :acrobatics, :boolean
    add_column :monsters, :calligraphy, :boolean
    add_column :monsters, :crafting, :boolean
    add_column :monsters, :initiative, :boolean
    add_column :monsters, :legerdemain, :boolean
    add_column :monsters, :lock_picking, :boolean
    add_column :monsters, :riding, :boolean
    add_column :monsters, :piloting, :boolean
    add_column :monsters, :sailing, :boolean
    add_column :monsters, :stealth, :boolean
    add_column :monsters, :traps, :boolean
  end
end
