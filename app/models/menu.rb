class Menu < ActiveRecord::Base
  attr_accessible :image_url, :is_current, :is_sweet, :name
  validates :is_sweet, :is_current, :inclusion => [true, false]

  def pies
    # doing this because rails is singularizing "pies" into "py" WTF
    Pie.where :menu_id => id
  end

    
end
