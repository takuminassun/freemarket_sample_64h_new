class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  belongs_to_active_hash :prefecture
  belongs_to :category
  belongs_to :user
  # validates :images, presence: true
  validates :images, length: {minimum: 1}

  # nameの文字数は、1文字から40字まで
  validates :name,
    length: { minimum: 1, maximum: 40 }

  # descriptionの文字数は、1文字から1000字まで
  validates :description,
    length: { minimum: 1, maximum: 1000 }

  validates :category_id, presence: true
  validates :status, presence: true
  validates :shipping_burden, presence: true
  validates :prefecture_id, presence: true
  validates :shipping_date, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}

  def self.search(search)
    return Item.all unless search
    Item.where('name LIKE(?)'||'description LIKE(?)', "%#{search}%")
  end

end
