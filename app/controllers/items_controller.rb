class ItemsController < ApplicationController

  def index
    @items = Item.order('created_at DESC').page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end
end
