class PiesController < ApplicationController
  before_filter :sanitize_params, :only => [:update, :create]

  def sanitize_params
    params[:pie][:is_vegan] = params[:pie][:is_vegan] == "true"
    params[:pie][:is_vegetarian] = params[:pie][:is_vegetarian] == "true"
    params[:pie][:price] = params[:pie][:price].to_f
    params[:pie][:menu_id] = params[:pie][:menu_id].to_i
  end

  def get_menu_options
    current_menus = Menu.where is_current: true
    options = []
    current_menus.each do |menu|
      options << [menu.name, menu.id]
    end
    options
  end

  def new
    @pie = Pie.new
    @menu_options = get_menu_options

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pie }
    end
  end

  def create
    @pie = Pie.new(params[:pie])

    respond_to do |format|
      if @pie.save
        format.html { redirect_to @pie, notice: 'pie was successfully created.' }
        format.json { render json: @pie, status: :created, location: @pie }
      else
        format.html { render action: "new" }
        format.json { render json: @pie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @pie = Pie.find(params[:id])

    respond_to do |format|
      if @pie.update_attributes(params[:pie])
        format.html { redirect_to @pie, notice: 'pie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pie.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @menu_options = get_menu_options
    @pie = Pie.find(params[:id])
  end

  def destroy
    @pie = Pie.find(params[:id])
    @pie.destroy

    respond_to do |format|
      format.html { redirect_to pies_url }
      format.json { head :no_content }
    end
  end

  def index
    @pies = Pie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pies }
    end
  end

  def show
    @pie = Pie.find(params[:id])
    @menu = @pie.menu

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pie }
    end
  end
end
