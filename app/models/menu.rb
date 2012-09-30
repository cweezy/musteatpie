class Menu < ActiveRecord::Base
  attr_accessible :image_url, :is_current, :is_sweet, :name
  has_many :pies
  validates :is_sweet, :is_current, :inclusion => [true, false]
end
