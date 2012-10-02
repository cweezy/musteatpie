class MenusController < AdminController
  before_filter :sanitize_params, :only => [:update, :create]

  def sanitize_params
    params[:menu][:is_current] = params[:menu][:is_current] == "true"
    params[:menu][:is_sweet] = params[:menu][:is_sweet] == "true"
  end
  def index
    @menus = Menu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menus }
    end
  end

  def show
    @menu = Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu }
    end
  end
  
  # GET /menus/new
  # GET /menus/new.json
  def new
    @menu = Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu }
    end
  end

  # GET /menus/1/edit
  def edit
    @menu = Menu.find(params[:id])
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(params[:menu])

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'menu was successfully created.' }
        format.json { render json: @menu, status: :created, location: @menu }
      else
        format.html { render action: "new" }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menus/1
  # PUT /menus/1.json
  def update
    @menu = Menu.find(params[:id])

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        format.html { redirect_to @menu, notice: 'menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end
  
end
