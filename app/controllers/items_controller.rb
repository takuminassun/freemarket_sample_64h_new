class ItemsController < ApplicationController
  def index
    # @parents = Category.all.order("id ASC").limit(13)
    # @parenys = Item.index(item_params)
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

  def ancestry
    @parents = Category.all.order("id ASC").limit(13)
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
