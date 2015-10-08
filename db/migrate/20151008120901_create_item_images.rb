class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.string :image_type
      t.binary :image_pass

      t.timestamps null: false
    end
  end
end
