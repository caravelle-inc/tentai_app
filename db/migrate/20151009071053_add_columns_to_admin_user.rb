class AddColumnsToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :name, :string, :null => false, default: ""
    add_column :admin_users, :tel, :string
    add_column :admin_users, :address, :string
    add_column :admin_users, :corporate_url, :string
  end
end
