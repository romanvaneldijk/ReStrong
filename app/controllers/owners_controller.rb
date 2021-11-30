class OwnersController < ApplicationController
  def show
    @orders = Order.all
    @dinners = Dinner.all
    @tables = Table.all
  end
end
