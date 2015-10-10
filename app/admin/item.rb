ActiveAdmin.register Item do
  permit_params :name, :price, :image, :image_cache, :address, :sub_address, :security_deposit, :key_money, :station, :walk_to, :floor_plans, :square_meter, :item_age, :equipment, :description, :admin_user_id


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :name
    column :price
    column :image do |item|
      image_tag(item.image.thumb_min)
    end
    column :address
    # column :sub_address
    # column :security_deposit
    # column :key_money
    # column :station
    # column :walk_to
    # column :floor_plans
    # column :square_meter
    # column :item_age
    # column :equipment
    # column :description
    actions
  end

  show do |item|
    attributes_table do
      row :name do
        item.name
      end
      row :address do
        item.address
      end
      row :image do
        image_tag(item.image.thumb)
      end
    end
    active_admin_comments
  end


  form(:html => { :multipart => true }) do |f|
    f.inputs "Item Details" do
      f.input :name
      f.input :price
      f.input :image
      f.input :image_cache, as: :hidden
      f.input :address
      f.input :sub_address
      f.input :security_deposit
      f.input :key_money
      f.input :station
      f.input :walk_to
      f.input :floor_plans
      f.input :square_meter
      f.input :item_age
      f.input :equipment
      f.input :description
      f.input :admin_user_id
    end
    f.actions
  end

end
