ActiveAdmin.register ItemImage do
  # permit_params :image_type, :image_pass, :item_id

  config.per_page = 10


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
    column I18n.t("adminuser.image_type"), :image_type
    column I18n.t("adminuser.top_image"), :image_pass do |item_image|
      image_tag(item_image.image_pass.thumb_min)
    end
    column I18n.t("adminuser.created_at"), :created_at
    actions
  end


end
