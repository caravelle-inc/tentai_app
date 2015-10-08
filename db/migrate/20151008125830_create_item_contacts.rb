class CreateItemContacts < ActiveRecord::Migration
  def change
    create_table :item_contacts do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :purpose, :null => false
      t.text :comment
      t.datatime :arrive_at
      t.integer :item_id, :null => false

      t.timestamps null: false
    end
  end
end
