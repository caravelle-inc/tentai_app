class AddColumnsToItem < ActiveRecord::Migration
  def change
    add_column :items, :admin_users_id, :integer, null: false
  end
end
