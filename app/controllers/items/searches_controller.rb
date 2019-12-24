class Items::SearchesController < ApplicationController
  def index
    @items = Item.order("created_at DESC").search(params[:keyword]).page(params[:page]).per(8)
  end
end
