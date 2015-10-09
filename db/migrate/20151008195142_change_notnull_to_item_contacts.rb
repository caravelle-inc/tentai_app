class ChangeNotnullToItemContacts < ActiveRecord::Migration
  def change
    change_column :item_contacts, :arrive_at, :datetime, :null => false
  end
end
