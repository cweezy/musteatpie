class PieOrder < ActiveRecord::Base
  attr_accessible :pie_id, :quantity, :order_id

  belongs_to :order

  def pie
    Pie.find pie_id
  end
end
