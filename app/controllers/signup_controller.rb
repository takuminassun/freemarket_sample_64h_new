class SignupController < ApplicationController

  def step1
    @user = User.new
    @profile = Profile.new
  end

  def step2
    binding.pry
    @user = User.new(user_params)
    @profile = Profile.new(user_profile_params)
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
    binding.pry
  end

  def step3
    session[:phone_number] = user_params[:phone_number]
    @address = Address.new(address_params)
    binding.pry
  end

  def step4
    binding.pry
    session[:address_first_name] = address_params[:address_first_name]
    session[:address_last_name] = address_params[:address_last_name]
    session[:address_first_name_kana] = address_params[:address_first_name_kana]
    session[:address_last_name_kana] = address_params[:address_last_name_kana]
    session[:post_number] = address_params[:post_number]
    session[:city] = address_params[:city]
    session[:town] = address_params[:town]
    session[:building] = address_params[:building]
    session[:user_id] = address_params[:user_id]
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
      :born_day,
      :phone_number
    )
  end

  def user_profile_params
    params.require(:user).require(:profile).permit(
      :nickname
    )
  end

  def address_params
    binding.pry
    params.require(:address).permit(
      :address_first_name,
      :address_last_name,
      :address_first_name_kana,
      :address_last_name_kana,
      :post_number,
      :city,
      :town,
      :building,
      :user_id
    )
  end

end
