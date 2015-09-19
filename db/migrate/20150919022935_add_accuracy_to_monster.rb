class AddAccuracyToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :accuracy, :string
    add_column :monsters, :arcane_blast, :boolean
    add_column :monsters, :bows, :boolean
    add_column :monsters, :black_powder, :boolean
    add_column :monsters, :brawling, :boolean
    add_column :monsters, :dueling, :boolean
    add_column :monsters, :grenades, :boolean
    add_column :monsters, :light_blades, :boolean
    add_column :monsters, :staves, :boolean
  end
end
