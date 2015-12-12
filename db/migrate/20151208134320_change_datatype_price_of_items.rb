class ChangeDatatypePriceOfItems < ActiveRecord::Migration
  def change
    change_column :items, :price, :integer, :null => false
  end
end
