class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :mon_type

      t.timestamps null: false
    end
  end
end
