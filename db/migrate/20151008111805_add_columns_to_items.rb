class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :address, :string, :null => false
    add_column :items, :sub_address, :string, :null => false
    add_column :items, :security_deposit, :float, :null => false
    add_column :items, :key_money, :float, :null => false
    add_column :items, :station, :string, :null => false
    add_column :items, :walk_to, :string, :null => false
    add_column :items, :floor_plans, :string, :null => false
    add_column :items, :square_meter, :string
    add_column :items, :item_age, :string
    add_column :items, :equipment, :text
    add_column :items, :description, :text
  end
end
