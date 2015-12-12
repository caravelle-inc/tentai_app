class RemoveFloorplansAddressFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :floor_plans, :string
    remove_column :items, :address, :string
  end
end
