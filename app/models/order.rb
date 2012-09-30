class Order < ActiveRecord::Base
  #TODO: make a PieOrder model that this has many of
  attr_accessible :comments, :customer_name, :email, :phone, :pickup_datetime, :pickup_loc_id
end
