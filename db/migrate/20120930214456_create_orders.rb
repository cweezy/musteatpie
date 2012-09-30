class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :email
      t.text :comments
      t.string :phone
      t.integer :pickup_loc_id
      t.datetime :pickup_datetime

      t.timestamps
    end
  end
end
