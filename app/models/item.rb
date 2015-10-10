class Item < ActiveRecord::Base
  has_many :item_images, dependent: :destroy
  has_many :item_contacts
  belongs_to :admin_user

  accepts_nested_attributes_for :item_images, allow_destroy: true

  mount_uploader :image, ImageUploader
  mount_uploader :image_pass, ImageUploader

end
