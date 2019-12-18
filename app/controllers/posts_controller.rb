class PostsController < ApplicationController
  def index
    # @parents = Category.all.order("id ASC").limit(13)

    # @categories = Category.where(params[:id])
    @category_children1 = Category.where(id: 1)
    @category_ground_children1 = Category.where(id:2)
    @category_children2 = Category.where(id: 104)
  end
  
  

end
