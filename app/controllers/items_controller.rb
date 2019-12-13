class ItemsController < ApplicationController
  def index
    @items = Item.all
    @images = Image.all
    @category = Category.limit(4)
  end

  def new 
    @item = Item.new
    @image = @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '出品しました。'
    else
      render "new"
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:id, :item_id, :image]).merge(user_id: current_user.id)
  end



end
