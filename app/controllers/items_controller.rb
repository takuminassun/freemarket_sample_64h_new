class ItemsController < ApplicationController
  def index
  end

  def new 
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to "/"
    else
      render "new"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category_id, :brand_id, :price, :status, :description, :shipping_burden, :shipping_method, :shipping_date, :prefecture_id)
  end
end
