class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update, :destroy]
  before_action :correct_user, only: :edit

  def index
    @items = Item.order("created_at DESC").page(params[:page]).per(8)
    @images = Image.all
    @categorys = Category.limit(4)

  end

  

  def new 
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      @item.images.build
      render :new
    end
  end

  def show
    @images = @item.images
  end

  def edit 
    @images = @item.images
    
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else 
      redirect_to item_path(params[:id]), alert: '削除できませんでした。'
    end
  end


  def ancestry
    @parents = Category.all.order("id ASC").limit(13)
  end

  def search
    @items = Item.search(params[:keyword])
  end

  
  private

  def item_params
    params.require(:item).permit(:name, :category_id, :price, :status, :description, :shipping_burden, :shipping_date, :prefecture_id, images_attributes: [:image, :_destroy, :id] ).merge(user_id: current_user.id)
  end
  
  def set_item
    @item = Item.find(params[:id])
  end

  def correct_user
    @item = current_user.items.find_by(id: params[:id])
    unless @item
      redirect_to root_path
    end
  end

end
