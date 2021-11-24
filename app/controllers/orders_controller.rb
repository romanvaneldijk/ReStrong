class OrdersController < ApplicationController
  def show
    @items = current_user.order_items
  end
end
