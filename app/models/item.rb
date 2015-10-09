class Item < ActiveRecord::Base
  has_many :item_images, dependent: :destroy
  has_many :item_contacts
  belongs_to :admin_user
end
