class Item < ApplicationRecord
  # has_many :images
  # mount_uploader :image, ImageUploader
  has_many :images
  accepts_nested_attributes_for :images
end