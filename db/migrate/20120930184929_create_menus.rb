class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.boolean :is_sweet
      t.string :name
      t.boolean :is_current
      t.string :image_url

      t.timestamps
    end
  end
end
