class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable,omniauth_providers: [:facebook, :google_oauth2]
  has_one :card
  has_one :address 
  has_one :profile
  has_many :items
  has_many :sns_credentials, dependent: :destroy

  def self.find_oauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
    if snscredential.present?
      user = User.where(id: snscredential.user_id).first
    else
      user = User.where(email: auth.info.email).first
      if user.present?
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
      else
        user = User.new(
          sns_name: auth.info.name,
          email:    auth.info.email,
          password: Devise.friendly_token[0, 20],
          first_name: "苗字",
          last_name: "名前",
          first_name_kana: "ミョウジカナ",
          last_name_kana: "ナマエカナ",
          born_year: 2000,
          born_month: 1,
          born_day: 1,
          phone_number: "090000000"

          )
        SnsCredential.new(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
          user.save
      end
    end
    return user
  end


  # 漢字のみ許可
  with_options format: { with: /\A[一-龥乃ぁ-ん]+\z/ } do
    validates :first_name
    validates :last_name
  end

  # 全角カタカナのみ許可
  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :first_name_kana
    validates :last_name_kana
  end
  
  # 半角の数字のみ許可
  with_options format: { with: /\A[0-9]+\z/ } do
    validates :born_year
    validates :born_month
    validates :born_day
  end
  
end
