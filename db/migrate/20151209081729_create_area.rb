class CreateArea < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :district

      t.timestamps null: false
    end
  end
end
