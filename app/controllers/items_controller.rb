class ItemsController < ApplicationController
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
