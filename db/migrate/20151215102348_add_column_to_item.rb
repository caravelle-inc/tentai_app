class AddColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :latitude, :float, default: 0
    add_column :items, :longitude, :float, default: 0
  end
end
