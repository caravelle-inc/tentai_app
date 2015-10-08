class ChangeDatatypeNameOfItems < ActiveRecord::Migration
  def change
    change_column :items, :name, :string, :unique => true
  end
end
