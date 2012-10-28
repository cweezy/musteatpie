class CreatePieOrders < ActiveRecord::Migration
  def change
    create_table :pie_orders do |t|
      t.integer :pie_id
      t.integer :quantity
      t.integer :order_id

      t.timestamps
    end
  end
end
