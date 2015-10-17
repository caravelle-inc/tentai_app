ActiveAdmin.register ItemContact do
  permit_params :name, :email, :purpose, :comment, :arrive_at, :item_id

  menu priority: 2
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

  config.per_page = 10

  index do
    selectable_column
    id_column
    column I18n.t("adminuser.contact_name"), :name
    column I18n.t("adminuser.purpose"), :purpose

    actions
  end

  # show do |item|
  #   attributes_table do
  #     row "物件名" do
  #       item.name
  #     end
  #     row "住所" do
  #       item.address
  #     end
  #     row "外観写真" do
  #       image_tag(item.image.thumb_min)
  #     end
  #     row "間取り" do
  #       image_tag item.item_images.first.image_pass.thumb_min
  #     end
  #   end
  #   active_admin_comments
  # end

  filter :email
  filter :purpose
  filter :item_id

  # form do |f|
  #   f.inputs "Admin Details" do
  #     f.input :name
  #     f.input :email
  #     f.input :purpose, :as => :select, :collection => [['内見したい', 'naiken'],['詳しく聞きたい','kuwashiku'],['その他','sonohoka']], :prompt => true
  #     f.input :comment
  #     f.input :arrive_at
  #     f.input :item_id
  #   end
  #   f.actions
  # end


end
