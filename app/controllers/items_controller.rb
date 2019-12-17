class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update]

  def index

    @items = Item.order("created_at DESC").page(params[:page]).per(8)
    @images = Image.all
    @categorys = Category.limit(4)

  end

  def new 
    @item = Item.new
    3.times { @item.images.build}
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = '商品を出品しました'
      redirect_to root_path
    else
      flash.now[:alert] = '商品を出品できませんでした'
      render :new
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
