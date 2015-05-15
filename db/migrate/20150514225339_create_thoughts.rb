class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.text :title
      t.text :thought_href
      t.text :citation
      t.references :player, index: true

      t.timestamps null: false
    end
    add_foreign_key :thoughts, :players
  end
end
