class UsersController < ApplicationController  
  
  def mypage
    @user = User.find(current_user.id)
  end

  def logout
    @user = User.find(current_user.id)
  end

  def confirmation
    @user = User.find(current_user.id)
  end

  def profile 
    @user = User.find(current_user.id)
  end

end
