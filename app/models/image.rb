class Image < ApplicationRecord
  belongs_to :item
  # mount_uploader :name, ImageUploader
end