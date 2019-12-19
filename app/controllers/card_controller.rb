class CardController < ApplicationController
  require 'payjp'
  def index 
    @user = User.find(current_user.id)
  end

  def new
    @user = User.find(current_user.id)
    @card = Card.new
  end

  def create
    @card = Card.new

    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"] # APIキーの呼び出し
    if params['payjp_token'].blank? # ここはJavaScriptの.append()内のname属性です
      render user_card_index_path
    else
      customer = Payjp::Customer.create(        # customerの定義、ここの情報を元に、カード情報との紐付けがされる
        card: params['payjp_token'],            # 必須です
        metadata: {user_id: current_user.id}    # なくてもいいです
      )
      @card = Card.new(                  # カードテーブルのデータの作成
        user_id: current_user.id,        # ここでcurrent_user.idがいるので、前もってsigninさせておく
        customer_id: customer.id,        # customerは上で定義
        card_id: customer.default_card   # .default_cardを使うことで、customer定義時に紐付けされたカード情報を引っ張ってくる ここがnullなら上のcustomerのcard: params['payjp_token']が読み込めていないことが多い
      )

      if @card.save
        redirect_to root_path
      else
        redirect_to action: "create"
      end
    end

  end
  
end
