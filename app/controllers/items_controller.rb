class ItemsController < ApplicationController
  before_action :set_item, only:[:show, :edit, :update, :destroy]
  before_action :correct_user, only: :edit

  def index
    @categories = Category.where(params[:id])
    @category_children1 = Category.where(ancestry:1)
    @category_children2 = Category.where(ancestry:104)
    @category_children3 = Category.where(ancestry:156)
    @category_children4 = Category.where(ancestry:267)
    @category_children5 = Category.where(ancestry:386)
    @category_children6 = Category.where(ancestry:438)
    @category_children7 = Category.where(ancestry:521)
    @category_children8 = Category.where(ancestry:605)
    @category_children9 = Category.where(ancestry:680)
    @category_children10 = Category.where(ancestry:775)
    @category_children11 = Category.where(ancestry:818)
    @category_children12 = Category.where(ancestry:869)
    @category_children13 = Category.where(ancestry:926)
    @items = Item.order("created_at DESC").page(params[:page]).per(8)
    @images = Image.all
    @categorys = Category.limit(4)

  end

  def new 
    @item = Item.new
    @item.images.build
    # 3.times { @item.images.build}
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
