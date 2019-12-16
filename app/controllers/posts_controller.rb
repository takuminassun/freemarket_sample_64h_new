class PostsController < ApplicationController
  def index
    @items = Item.all
  end

end
