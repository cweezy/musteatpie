class Order < ActiveRecord::Base
  #TODO: make a PieOrder model that this has many of
  attr_accessible :comments, :customer_name, :email, :phone, :pickup_datetime, :pickup_loc_id, :pie_orders_attributes

  has_many :pie_orders, dependent: :destroy

  accepts_nested_attributes_for :pie_orders, :allow_destroy => true
end
