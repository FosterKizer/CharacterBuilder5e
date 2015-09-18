class AddConstitutionToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :constitution, :string
    add_column :monsters, :drinking, :boolean
    add_column :monsters, :rowing, :boolean
    add_column :monsters, :running, :boolean
    add_column :monsters, :stamina, :boolean
    add_column :monsters, :swimming, :boolean
  end
end
