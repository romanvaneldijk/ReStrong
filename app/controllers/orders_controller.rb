class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: "complete")
    redirect_to menu_path, notice: "Your order has been completed"
  end
end
