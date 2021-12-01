class OwnersController < ApplicationController
  def show
    @orders = Order.all
    @dinners = Dinner.all
    @tables = Table.all
  end
  def menu
    @items = Item.all
    @item = Item.new
  end
  def qr
    @tables = Table.all
    @new_table = Table.new
  end
end
