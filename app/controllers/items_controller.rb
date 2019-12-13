class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images)
    @images = Image.all
  end

  def new 
    @item = Item.new
    @image = @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to "/", notice: '出品しました。'
    else
      render "new", notice: '出品に失敗しました'
    end
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.images
  end


  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:id, :item_id, :image]).merge(user_id: current_user.id)
  end
  
end
