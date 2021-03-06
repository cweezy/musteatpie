class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def current_menu
    @savory_menus = Menu.where is_current: true, is_sweet: false
    @sweet_menus = Menu.where is_current: true, is_sweet: true 
  end

  def order
    current_pies = Pie.select do |pie|
      pie.menu.is_current
    end

    @pie_options = current_pies.map do |p|
      [p.name, p.id]
    end

    @order = Order.new
    1.times do
      @order.pie_orders.push PieOrder.new
    end

    @pickup_locs = PickupLoc.all

    gon.current_pies = current_pies
    
    respond_to do |format|
      format.html
    end
  end
  
  def thank_you
  end
end
