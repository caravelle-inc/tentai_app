class ItemContact < ActiveRecord::Base
  belongs_to :item

  validates :name,  presence: true
  validates :email, presence: true
  validates :comment, presence: true

end
