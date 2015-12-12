class ItemContactsController < ApplicationController
  def new
    @item_contact = ItemContact.new
    @item = Item.find(params[:id])
  end

  def create
    @item_contact = ItemContact.new item_contact_params
    @item = Item.find(@item_contact.item_id)
    @admin = @item.admin_user
    if @item_contact.save
      ItemContactMail.item_contact_to_user(@item_contact, @item).deliver_now
      ItemContactMail.item_contact_to_admin(@item_contact, @admin).deliver_now
      flash[:notice] = "お問い合わせが完了しました"
      redirect_to items_path
    else
      flash[:alert] = "お問い合わせが完了していません"
      render 'new'
    end
  end

  def item_contact_params
    params[:item_contact].permit(:item_id, :name, :email, :purpose, :comment, :arrive_at, :item_id)
  end
end
