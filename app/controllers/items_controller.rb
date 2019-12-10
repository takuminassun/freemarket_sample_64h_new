class ItemsController < ApplicationController
  def index
  end

  def new 
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to "/"
    else
      render "new"
    end
  end
end
