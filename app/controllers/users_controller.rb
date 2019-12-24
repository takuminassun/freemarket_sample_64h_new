class UsersController < ApplicationController

  before_action :set_action
  
  def mypage
    @user = User.find(current_user.id)
    @profile = Profile.find(current_user.id)
  end

  def logout
  end

  def confirmation
  end

  def profile 
    @profile = Profile.find(current_user.id)
  end

  private
  
  def set_action
    @user = User.find(current_user.id)
  end

end
