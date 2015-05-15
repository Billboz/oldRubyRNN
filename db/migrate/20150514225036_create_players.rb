class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :player_name
      t.string :email
      t.integer :level
      t.integer :exp
      t.integer :influence

      t.timestamps null: false
    end
  end
end
