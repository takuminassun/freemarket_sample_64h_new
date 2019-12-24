class UsersController < ApplicationController

  before_action :set_action
  
  def mypage
  end

  def logout
  end

  def confirmation
  end

  def profile 
  end

  private
  
  def set_action
    @user = User.find(current_user.id)
  end

end
