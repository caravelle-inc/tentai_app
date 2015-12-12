class AddWalktoToItems < ActiveRecord::Migration
  def change
    add_column :items, :walk_to, :integer
  end
end
