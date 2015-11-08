class Item < ActiveRecord::Base
  has_many :item_images, dependent: :destroy
  has_many :item_contacts
  belongs_to :admin_user

  accepts_nested_attributes_for :item_images, allow_destroy: true

  mount_uploader :image, ImageUploader

  paginates_per 4

  validates :name, :price, :address, :sub_address, :security_deposit, :key_money, :station,
            :walk_to, :floor_plans, :square_meter, :item_age, :image,  presence: true

end
