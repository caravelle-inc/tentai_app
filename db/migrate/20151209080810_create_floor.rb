class CreateFloor < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
