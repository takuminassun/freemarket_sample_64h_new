class CardsController < ApplicationController
  require "payjp"
  # before_action :set_card

  def new
    session[:address_first_name] = address_params[:address_first_name]
    session[:address_last_name] = address_params[:address_last_name]
    session[:address_first_name_kana] = address_params[:address_first_name_kana]
    session[:address_last_name_kana] = address_params[:address_last_name_kana]
    session[:post_number] = address_params[:post_number]
    session[:city] = address_params[:city]
    session[:town] = address_params[:town]
    session[:building] = address_params[:building]
    session[:user_id] = address_params[:user_id]
    @card = Card.new
  end

    # カードの登録画面。送信ボタンを押すとcreateアクションへ。
    # card = Card.where(user_id: current_user.id).first
    # redirect_to action: "index" if card.present?

  def create #PayjpとCardのデータベースを作成
    Payjp.api_key = '秘密鍵'

    if params['payjp-token'].blank?
      binding.pry
      redirect_to action: "new"
    else

      # トークンが正常に発行されていたら、顧客情報をPAY.JPに登録します。
      customer = Payjp::Customer.create(
        description: 'test', # 無くてもOK。PAY.JPの顧客情報に表示する概要です。
        email: current_user.email,
        card: params['payjp-token'], # 直前のnewアクションで発行され、送られてくるトークンをここで顧客に紐付けて永久保存します。
        metadata: {user_id: current_user.id} # 無くてもOK。
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "index"
      else
        redirect_to action: "create"
      end
    end
  end

  private

  def address_params
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

  # def set_card
  #   @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  # end

end
