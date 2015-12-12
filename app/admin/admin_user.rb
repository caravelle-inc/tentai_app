ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :name, :tel, :address, :corporate_url, admin_role_ids: []

  menu priority: 3

  config.per_page = 10

  index do
    selectable_column
    id_column
    column I18n.t("adminuser.admin_name"), :name
    column I18n.t("adminuser.admin_role"), :admin_roles do |f|
      f.admin_roles.size > 0 ? f.admin_roles.map { |r| r.name }.join(", ") : ''
    end
    column I18n.t("adminuser.address"), :address
    column I18n.t("adminuser.email"), :email
    column I18n.t("adminuser.current_sign_in_at"), :current_sign_in_at
    column I18n.t("adminuser.last_sign_in_at"), :sign_in_count
    column I18n.t("adminuser.created_at"), :created_at
    actions
  end

  filter :email
  filter :admin_roles
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :tel
      f.input :area_id, :as => :select, :collection => [['渋谷区', '渋谷区'],['新宿区','新宿区'],['中央区','中央区'],['品川区','品川区'],['千代田区','千代田区'],['港区','港区'],['文京区','文京区'],['大田区','大田区'],['江東区','江東区']], :prompt => true
      f.input :corporate_url
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin_roles, :as => :select, :collection => [['admin', 2],['super_admin', 1]], :prompt => true
    end
    f.actions
  end

  # パスワードが空の状態で編集した場合はパスワード更新しないように（can't be blank エラーの防止）
  controller do
    def update
      if params[:admin_user][:password].blank?
        params[:admin_user].delete("password")
        params[:admin_user].delete("password_confirmation")
      end
      super
    end
  end

end

