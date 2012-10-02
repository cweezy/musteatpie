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
  end
end
