class PurchasesController < ApplicationController
  require 'payjp'
  before_action :set_card, :set_item
  before_action :authenticate_user!

  def index
    @images = @item.images
    @user = User.find(current_user.id)
    @items = Item.order("created_at DESC").page(params[:page]).per(8)
    @address = current_user.address
    if @card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to new_user_card_path(@user)
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(@card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def pay
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    Payjp::Charge.create(
    amount: @item.price,          #支払金額を引っ張ってくる
    customer: @card.customer_id,  #顧客ID
    currency: 'jpy',              #日本円
  )
  redirect_to action: 'done' #完了画面に移動
  end

  def done
    @item_purchases = Item.find(params[:item_id])
    @item_purchases.update(buyer_id: current_user.id)
    @items = Item.order("created_at DESC").page(params[:page]).per(8)
  end

  private


  def set_card
    @card = Card.find_by(user_id: current_user)
  end

  def set_item
    @item = Item.find(params[:item_id])   
    if @item.buyer_id.present? || current_user.id == @item.user_id 
      redirect_to root_path
    end
  end
end
