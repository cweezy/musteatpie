class CreatePies < ActiveRecord::Migration
  def change
    create_table :pies do |t|
      t.string :name
      t.text :description
      t.integer :menu_id
      t.decimal :price, :precision => 5, :scale => 2
      t.boolean :is_vegan
      t.boolean :is_vegetarian

      t.timestamps
    end
    add_index :pies, :menu_id
  end
end
