class Item < ActiveRecord::Base
  has_many :item_images, dependent: :destroy
  has_many :item_contacts
  belongs_to :admin_user
  belongs_to :floor
  belongs_to :area

  accepts_nested_attributes_for :item_images, allow_destroy: true

  mount_uploader :image, ImageUploader

  paginates_per 8

  validates :name, :price, :area_id, :security_deposit, :key_money, :station,
            :walk_to, :floor_id, :image, :admin_user_id, presence: true

  geocoded_by :sub_address
  after_validation :geocode

end
