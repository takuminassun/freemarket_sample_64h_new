class SignupController < ApplicationController

  require 'payjp'

  def purchase
    Payjp.api_key = "秘密鍵"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end

  def step1
    @user = User.new
    @profile = Profile.new
  end

  def step2
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
    @user = User.new
  end

  def step3
    session[:phone_number] = user_params[:phone_number]
    @address = Address.new
  end

  def step5
    @user = User.new(
      email: session[:email],
      password: session[:password],
      first_name: session[:first_name],
      last_name: session[:last_name],
      first_name_kana: session[:first_name_kana],
      last_name_kana: session[:last_name_kana],
      born_year: session[:born_year],
      born_month: session[:born_month],
      born_day: session[:born_day],
      phone_number: session[:phone_number]
    )
    @address = Address.new(
      address_first_name: session[:address_first_name],
      address_last_name: session[:address_last_name],
      address_first_name_kana: session[:address_first_name_kana],
      address_last_name_kana: session[:address_last_name_kana],
      post_number: session[:post_number],
      city: session[:city],
      town: session[:town],
      building: session[:building]
    )
    @profile = Profile.new(nickname: session[:nickname])
    @user.save!
    @address.save!
    @profile.save!
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



end
