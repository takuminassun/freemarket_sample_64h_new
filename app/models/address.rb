class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true

  with_options format: { with: /\A[一-龥ぁ-ん]+\z/ } do
    validates :address_first_name
    validates :address_last_name
  end

  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :address_first_name_kana
    validates :address_last_name_kana
  end

  validates :post_number, length: { is: 7 } 
  
end