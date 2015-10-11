class ChangeDatatypeImagePassOfItemImage < ActiveRecord::Migration
  def change
    change_column :item_images, :image_pass, :string
  end
end
