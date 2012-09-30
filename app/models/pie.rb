class Pie < ActiveRecord::Base
  attr_accessible :description, :is_vegan, :is_vegetarian, :menu_id, :name, :price
end
