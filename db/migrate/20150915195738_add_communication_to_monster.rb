class AddCommunicationToMonster < ActiveRecord::Migration
  def change
    add_column :monsters, :communication, :string
  end
end
