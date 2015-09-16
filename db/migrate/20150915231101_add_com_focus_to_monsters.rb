class AddComFocusToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :animal_handling, :boolean
    add_column :monsters, :bargaining, :boolean
    add_column :monsters, :deception, :boolean
    add_column :monsters, :disguise, :boolean
    add_column :monsters, :etiquette, :boolean
    add_column :monsters, :gambling, :boolean
    add_column :monsters, :investigation, :boolean
    add_column :monsters, :leadership, :boolean
    add_column :monsters, :performance, :boolean
    add_column :monsters, :persuasion, :boolean
    add_column :monsters, :seduction, :boolean
  end
end
