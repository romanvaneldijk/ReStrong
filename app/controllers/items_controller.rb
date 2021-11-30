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
      redirect_to owner_menu_path
    else
      render :new
    end

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to request.referer
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end

end
