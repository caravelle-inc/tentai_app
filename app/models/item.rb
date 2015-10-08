class Item < ActiveRecord::Base
  has_many :item_image, dependent: :destroy
end
