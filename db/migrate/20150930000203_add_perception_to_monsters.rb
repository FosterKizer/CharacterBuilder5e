class AddPerceptionToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :perception, :string
    add_column :monsters, :empathy, :boolean
    add_column :monsters, :hearing, :boolean
    add_column :monsters, :searching, :boolean
    add_column :monsters, :seeing, :boolean
    add_column :monsters, :smelling, :boolean
    add_column :monsters, :tracking, :boolean
  end
end
