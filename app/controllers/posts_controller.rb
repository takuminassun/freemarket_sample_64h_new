class PostsController < ApplicationController
  def index
    
    @users = User.all
    @items = Item.all
  end
  
  

end
