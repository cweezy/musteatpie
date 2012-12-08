class Order < ActiveRecord::Base
  attr_accessible :comments, :customer_name, :email, :phone, :pickup_datetime, :pickup_loc_id, :pie_orders_attributes

  before_save :calc_price

  has_many :pie_orders, dependent: :destroy
  has_one :pickup_loc


  def pickup_loc
    PickupLoc.find pickup_loc_id
  end

  def price
    @price
  end

  def calc_price
    v = 0
    pie_orders.each do |po|
      v += po.pie.price.to_f
    end
    @price = v
  end

  accepts_nested_attributes_for :pie_orders, :allow_destroy => true
end
