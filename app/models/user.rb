class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address, inverse_of: :user
  has_one :profile, inverse_of: :user
  has_many :items


  # 漢字のみ許可
  with_options format: { with: /\A[一-龥]+\z/ } do
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
