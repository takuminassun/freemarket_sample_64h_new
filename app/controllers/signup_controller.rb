class SignupController < ApplicationController


  def index
  end

  def step1
    @user = User.new
    @profile = Profile.new
  end

  def step2
    @user = User.new(user_params)
    @profile = Profile.new(user_profile_params)
    # binding.pry
    if @user.valid? && @profile.valid?
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
    else
      render action: "step1"
    end
  end

  def step3
    @user = User.new(
      phone_number: user_phone_params[:phone_number]
    )
    if @user[:phone_number].present?
      session[:phone_number] = user_phone_params[:phone_number]
      @address = Address.new
    else
      render action: 'step2'
    end
  end

  def create
    @address = Address.new(address_params)
    binding.pry
    if @address.valid?
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
      @profile = Profile.new(
        nickname: session[:nickname]
      )
      if @profile.valid? && @user.valid?
        @user.save!
        @profile = Profile.new(
          nickname: session[:nickname],
          user_id: @user[:id]
        )
        @address = Address.new(
          address_first_name: address_params[:address_first_name],
          address_last_name: address_params[:address_last_name],
          address_first_name_kana: address_params[:address_first_name_kana],
          address_last_name_kana: address_params[:address_last_name_kana],
          post_number: address_params[:post_number],
          prefecture_id: address_params[:prefecture_id],
          city: address_params[:city],
          town: address_params[:town],
          building: address_params[:building],
          user_id: @user[:id]
        )
        @address.save
        @user.save
        @profile.save
        sign_in @user
      else
        redirect_to action: 'step1'
      end
    else
      render action: 'step3'
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
      :born_day,
    )
  end

  def user_phone_params
    params.require(:user).permit(
      :phone_number
    )
  end

  def user_profile_params
    params.require(:user).require(:profile).permit(
      :nickname
    )
  end

  def address_params
    params.require(:address).permit(
      :address_first_name,
      :address_last_name,
      :address_first_name_kana,
      :address_last_name_kana,
      :post_number,
      :prefecture_id,
      :city,
      :town,
      :building,
    )
  end

end
