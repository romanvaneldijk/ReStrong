class ItemsController < ApplicationController
  def index
    @items = Item.all
    @user = current_user
    @order = @user.orders.find_by(status: "processing")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to owner_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :price)
  end

end
