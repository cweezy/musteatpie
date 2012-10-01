class PieOrdersController < ApplicationController
  # GET /pie_orders
  # GET /pie_orders.json
  def index
    @pie_orders = PieOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pie_orders }
    end
  end

  # GET /pie_orders/1
  # GET /pie_orders/1.json
  def show
    @pie_order = PieOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pie_order }
    end
  end

  # GET /pie_orders/new
  # GET /pie_orders/new.json
  def new
    @pie_order = PieOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pie_order }
    end
  end

  # GET /pie_orders/1/edit
  def edit
    @pie_order = PieOrder.find(params[:id])
  end

  # POST /pie_orders
  # POST /pie_orders.json
  def create
    @pie_order = PieOrder.new(params[:pie_order])

    respond_to do |format|
      if @pie_order.save
        format.html { redirect_to @pie_order, notice: 'Pie order was successfully created.' }
        format.json { render json: @pie_order, status: :created, location: @pie_order }
      else
        format.html { render action: "new" }
        format.json { render json: @pie_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pie_orders/1
  # PUT /pie_orders/1.json
  def update
    @pie_order = PieOrder.find(params[:id])

    respond_to do |format|
      if @pie_order.update_attributes(params[:pie_order])
        format.html { redirect_to @pie_order, notice: 'Pie order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pie_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pie_orders/1
  # DELETE /pie_orders/1.json
  def destroy
    @pie_order = PieOrder.find(params[:id])
    @pie_order.destroy

    respond_to do |format|
      format.html { redirect_to pie_orders_url }
      format.json { head :no_content }
    end
  end
end
