class OwnersController < ApplicationController
  def show
    @orders = Order.all
  end
end
