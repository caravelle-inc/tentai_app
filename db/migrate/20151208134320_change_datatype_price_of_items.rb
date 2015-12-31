class ChangeDatatypePriceOfItems < ActiveRecord::Migration
  def change
    case Rails.env
      when 'production'
        change_column :items, :price, 'integer USING CAST(price AS integer)', :null => false
      when 'staging'
        change_column :items, :price, :integer, :null => false
      when 'development'
        change_column :items, :price, :integer, :null => false
      when 'test'
        change_column :items, :price, :integer, :null => false
    end
  end
end
