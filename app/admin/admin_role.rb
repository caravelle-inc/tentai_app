ActiveAdmin.register AdminRole do

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

  menu false

  permit_params :name

  index do
    selectable_column
    id_column
    column I18n.t("adminuser.admin_role"), :name
    column I18n.t("adminuser.created_at"), :created_at

    actions
  end


end
