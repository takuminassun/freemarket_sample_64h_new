class SignupController < ApplicationController

  def step1
    @user = User.new
    @profile = Profile.new
  end

  def step2
    @user = User.new(user_params)
    @profile = Profile.new(user_profile_params)
    if @user.save! && @profile.save!
      session[:email] = user_params[:email]
      session[:password] = user_params[:password]
      session[:first_name] = user_params[:first_name]
      session[:last_name] = user_params[:last_name]
      session[:first_name_kana] = user_params[:first_name_kana]
      session[:last_name_kana] = user_params[:last_name_kana]
      session[:born_year] = user_params[:born_year]
      session[:born_month] = user_params[:born_month]
      session[:born_day] = user_params[:born_day]
      session[:nickname] = user_profile_params[:nickname]
      
    else
      redirect_to action: "step1"
    end



  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :first_name,
      :last_name,
      :first_name_kana,
      :last_name_kana,
      :born_year,
      :born_month,
      :born_day
    )
  end

  def user_profile_params
    params.require(:user).require(:profile).permit(
      :nickname
    )
  end
  
end
