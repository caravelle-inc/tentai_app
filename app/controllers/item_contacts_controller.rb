class ItemContactsController < ApplicationController
  def new
    @item_contact = ItemContact.new
    @item_id = params[:id]
  end

  def create
    @item_contact = ItemContact.new item_contact_params
    @item = Item.find(@item_contact.item_id)
    @item_admin = @item.admin_user
    if @item_contact.save
      ItemContactMailer.item_contact_mail(@item_contact, @item).deliver_now
      ItemContactMailer.item_contact_to_admin(@item_contact, @item_admin).deliver_now
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
