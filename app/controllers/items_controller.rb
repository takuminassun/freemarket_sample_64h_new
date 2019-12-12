class ItemsController < ApplicationController
  def index
  end

  def new 
    @item = Item.new
    3.times { @item.images.build}
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render "new"
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:image] ).merge(user_id: current_user.id)
  end

end
