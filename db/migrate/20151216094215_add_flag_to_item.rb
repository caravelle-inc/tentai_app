class AddFlagToItem < ActiveRecord::Migration
  def change
    add_column :items, :flag, :boolean, default: true
  end
end
