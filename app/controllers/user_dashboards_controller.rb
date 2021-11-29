class UserDashboardsController < ApplicationController
  def show
    @user = current_user
    @order = Order.find(params[:order_id])
    @order2 = @user.orders
  end
end
