class Address < ApplicationRecord

  belongs_to :user, optional: true

  with_options format: { with: /\A[一-龥]+\z/ } do
    validates :address_first_name
    validates :address_last_name
  end

  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :address_first_name_kana
    validates :address_last_name_kana
  end

  with_options format: { with: /\A[0-9]+\z/ } do
    validates :town
  end
  
end