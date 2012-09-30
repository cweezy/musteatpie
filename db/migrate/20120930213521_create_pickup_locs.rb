class CreatePickupLocs < ActiveRecord::Migration
  def change
    create_table :pickup_locs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
