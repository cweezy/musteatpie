class Pie < ActiveRecord::Base
  attr_accessible :description, :is_vegan, :is_vegetarian, :menu, :menu_id, :name, :price
  belongs_to :menu
  validates :is_vegan, :is_vegetarian, :inclusion => [true, false]
  validates :menu_id, :presence => true
end
