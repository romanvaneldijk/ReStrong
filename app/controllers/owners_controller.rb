class OwnersController < ApplicationController
  def show
    @orders = Order.all
    @dinners = Dinner.all
  end
  def menu
    @items = Item.all
  end
end
