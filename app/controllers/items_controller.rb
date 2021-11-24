class ItemsController < ApplicationController
  def index
    @items = Item.all
    @user = current_user
    @order = @user.orders.find_by(status: "processing")
  end
end
