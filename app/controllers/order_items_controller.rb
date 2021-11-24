class OrderItemsController < ApplicationController
  def create
    @user = current_user
    @item = Item.find(params[:item_id])
    # @item = Item.find_by(status: "processing").present?
    if @user.orders.find_by(status: "processing").present?
      @order = @user.orders.find_by(status: "processing")
    else
      @order = Order.create(user: @user)
    end
    OrderItem.create(order: @order, item: @item)
  end

  def destroy
    @user = current_user
    @item = Item.find(params[:item_id])
    @order_item = OrderItem.find_by(item: @item)
    @order_item.destroy
  end
end