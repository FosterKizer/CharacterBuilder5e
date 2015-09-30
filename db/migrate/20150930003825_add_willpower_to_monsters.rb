class AddWillpowerToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :willpower, :string
    add_column :monsters, :courage, :boolean
    add_column :monsters, :faith, :boolean
    add_column :monsters, :morale, :boolean
    add_column :monsters, :self_discipline, :boolean
  end
end
