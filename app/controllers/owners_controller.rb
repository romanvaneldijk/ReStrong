class OwnersController < ApplicationController
  def show
    @orders = Order.all
    @dinners = Dinner.all
    @tables = Table.all
  end
  def menu
    @items = Item.all
  end
end
