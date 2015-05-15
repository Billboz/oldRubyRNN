class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
      t.text :rating_def
      t.integer :value
      t.references :player, index: true
      t.references :thought, index: true

      t.timestamps null: false
    end
    add_foreign_key :ratings, :players
    add_foreign_key :ratings, :thoughts
  end
end
