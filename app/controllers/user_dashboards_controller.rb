class UserDashboardsController < ApplicationController
  def show
    @user = current_user
    @orders = @user.order_items
  end
end
