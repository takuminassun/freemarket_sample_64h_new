class CardController < ApplicationController
  def index 
    @users = User.all
  end
end
