class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: "complete")
    redirect_to order_user_dashboard_path(@order), notice: "Your order has been completed"
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
