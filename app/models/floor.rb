class Floor < ActiveRecord::Base
  has_many :items, dependent: :destroy
  self.inheritance_column = :_type_disabled #ActiveRecord: typeエラー対応
end
