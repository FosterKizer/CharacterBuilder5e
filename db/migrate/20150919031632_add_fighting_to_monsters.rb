class AddFightingToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :fighting, :string
    add_column :monsters, :axes, :boolean
    add_column :monsters, :bludgeons, :boolean
    add_column :monsters, :heavy_blades, :boolean
    add_column :monsters, :lances, :boolean
    add_column :monsters, :polearms, :boolean
    add_column :monsters, :spears, :boolean
  end
end
