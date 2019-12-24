class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:keyword])
  end
end
