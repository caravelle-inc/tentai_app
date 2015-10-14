ActiveAdmin.register Item do
  permit_params :name, :price, :image, :image_cache, :address, :sub_address, :security_deposit, :key_money, :station, :walk_to, :floor_plans, :square_meter, :item_age, :equipment, :description, :admin_user_id, item_images_attributes: [:id, :image_type, :image_pass, :_destroy]

  menu priority: 1
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
    column I18n.t("adminuser.item_name"), :name
    column I18n.t("adminuser.top_image"), :image do |item|
      image_tag(item.image.thumb_min)
    end
    # item_imagesから表示の場合
    # column I18n.t("adminuser.item_image"), :item_image do |item|
    #   image_tag(item.item_images.first.image_pass.thumb_min)
    # end
    column I18n.t("adminuser.price"), :price
    column I18n.t("adminuser.address"), :address
    column I18n.t("adminuser.station"), :station
    column I18n.t("adminuser.floor_plans"), :floor_plans
    column I18n.t("adminuser.created_at"), :created_at
    actions
  end

  show do |item|
    attributes_table do
      row "物件名" do
        item.name
      end
      row "住所" do
        item.address
      end
      row "外観写真" do
        image_tag(item.image.thumb_min)
      end
      row "間取り" do
        image_tag item.item_images.first.image_pass.thumb_min
      end
      row "お問い合わせ" do

      end
    end
    active_admin_comments
  end

  filter :price
  filter :address
  filter :station
  filter :floor_plans


  form(:html => { :multipart => true }) do |f|
    f.inputs "Item Details" do
      f.input :name
      f.input :price
      f.input :address, :as => :select, :collection => [['渋谷区', '渋谷区'],['新宿区','新宿区'],['中央区','中央区'],['品川区','品川区'],['千代田区','千代田区'],['港区','港区'],['文京区','文京区'],['大田区','大田区'],['江東区','江東区']], :prompt => true
      f.input :sub_address
      f.input :security_deposit, :as => :select, :collection => [['0', 0],['0.5',0.5],['1',1],['1.5',1.5],['2',2.0]], :prompt => "選択してください"
      f.input :key_money, :as => :select, :collection => [['0', 0],['0.5',0.5],['1',1],['1.5',1.5],['2',2.0]], :prompt => "選択してください"
      f.input :station
      f.input :walk_to, :as => :select, :collection => [['1', '1'],['3','3'],['5','5'],['7','7'],['10','10'],['15以上','15以上']], :prompt => "選択してください"
      f.input :floor_plans, :as => :select, :collection => [['1K', '1K'],['1DK', '1DK'],['1LDK', '1LDK'],['2K', '2K'],['2DK', '2DK'],['2LDK', '2LDK'],['3K', '3K'],['3DK', '3DK'],['3LDK', '3LDK'],['4K', '4K'],['4DK', '4DK'],['4LDK', '4LDK'],['5K以上','5K以上']], :prompt => true
      f.input :square_meter, :as => :select, :collection => [['20m2', '20m2'],['25m2', '25m2'],['30m2', '30m2'],['35m2', '35m2'],['40m2', '40m2'],['45m2', '45m2'],['50m2', '50m2'],['55m2', '55m2'],['60m2', '60m2'],['65m2', '65m2'],['70m2', '70m2'],['75m2', '75m2'],['80m2以上','80m2以上']], :prompt => true
      f.input :item_age, :as => :select, :collection => [['1年', '1年'],['3年', '3年'],['5年', '5年'],['7年', '7年'],['10年', '10年'],['15年', '15年'],['20年', '20年'],['25年', '25年'],['30年以上', '30年以上']], :prompt => true
      f.input :equipment
      f.input :description
      if current_admin_user.email == "m220274@gmail.com"
        f.input :admin_user_id, :as => :select, :collection => AdminUser.all, :prompt => true
      else
        f.input :admin_user_id, input_html: {value: current_admin_user.id}
      end
      f.input :image
      f.input :image_cache, as: :hidden
      f.inputs do
        f.has_many :item_images, heading: 'Images', allow_destroy: true, new_record: true do |a|
          a.input :image_type, :as => :select, :collection => [['外観', 'gaikan'],['間取り','madori'],['内観','naikan'],['その他','other']], :prompt => true
          a.input :image_pass
        end
      end
    end
    f.actions
  end

  # controller do
  #   def permitted_params
  #     params.permit admin_user: [:email, :password, :password_confirmation]
  #   end
  # end

end
