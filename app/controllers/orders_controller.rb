class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if request.referer.include?("owner")
      @order.update(status: "ready to serve")
      redirect_to owner_orders_path(table: @order.table.id, anchor: "heading#{@order.table.id}")
    else
      @order.update(status: "complete")
      redirect_to order_user_dashboard_path(@order), notice: "Your order is being prepared"
    end
  end

  def destroy
    # @order = Order.find(params[:id])
    @user = current_user
    if @user.orders.find_by(status: "processing").present?
      @user.orders.find_by(status: "processing").destroy
      redirect_to menu_path, notice: "Your order has been deleted"
    end
  end

end
