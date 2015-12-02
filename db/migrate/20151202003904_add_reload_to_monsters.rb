class AddReloadToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :reload_1, :string
    add_column :monsters, :reload_2, :string
    add_column :monsters, :reload_3, :string
    add_column :monsters, :reload_4, :string
    add_column :monsters, :reload_5, :string
  end
end
