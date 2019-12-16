class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]

  def index
    @items = Item.includes(:images)
    @images = Image.all
  end

  def new 
    @item = Item.new
    3.times { @item.images.build}
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
    @images = @item.images
  end

  def edit 
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render = "edit"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:image,:id] ).merge(user_id: current_user.id)
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

end
