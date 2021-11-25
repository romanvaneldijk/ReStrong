class OwnersController < ApplicationController
  def show
    @orders = Order.all
    @dinners = Dinner.all
  end
end
