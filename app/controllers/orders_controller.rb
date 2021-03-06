class OrdersController < AdminController
  before_filter :authenticate, :except => [:create]

  # POST /orders.json
  def create

    params[:order][:pie_orders_attributes] = params[:order][:pie_orders_attributes].map { |k, v| v }
    params[:order][:pickup_datetime] =Date.strptime(params[:order][:pickup_datetime], "%m/%d/%Y").to_datetime

    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        # send email
        OrderMailer.order_email(@order).deliver
        
        # set up page they get to
        flash[:last_order] = @order
        format.json { render json: @order, status: :created, location: @order }
        format.html { redirect_to thankyou_path }
      else
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1.json
  def update
    params[:order][:pie_orders_attributes] = params[:order][:pie_orders_attributes].map { |k, v| v }

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.json { head :no_content }
      else
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
