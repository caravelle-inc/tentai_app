class AddAreaidFlooridToItems < ActiveRecord::Migration
  def change
    add_column :items, :area_id, :integer, null: false
    add_column :items, :floor_id, :integer, null: false
  end
end
