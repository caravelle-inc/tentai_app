class RenameAdminUsersIdColumnToItem < ActiveRecord::Migration
  def change
    rename_column :items, :admin_users_id, :admin_user_id
  end
end
