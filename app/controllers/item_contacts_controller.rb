class ItemContactsController < ApplicationController
  def new
    @item_contact = ItemContact.new
  end

  def create
    @item_contact = ItemContact.new item_contact_params
    if @item_contact.save
      flash[:notice] = "お問い合わせ完了しました"
      redirect_to items_path
    else
      flash[:alert] = "お問い合わせがしていません"
      render 'new'
    end
  end

  def item_contact_params
    params[:item_contact].permit(:item_id, :name, :email, :purpose, :comment, :arrive_at, :item_id)
  end
end
