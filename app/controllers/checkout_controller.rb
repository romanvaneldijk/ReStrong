class CheckoutController < ApplicationController
  def show
    @menu_items = current_user.menu_items
  end
end
