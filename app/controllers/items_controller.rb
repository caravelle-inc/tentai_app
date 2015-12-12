class ItemsController < ApplicationController

  def index
    @items = Item.order('created_at DESC').page(params[:page])
    @q = Item.ransack(params[:q])
    @item_counts = Item.all.count
    if params[:q]
      @items = @q.result.order('created_at DESC').page(params[:page])
      @item_counts = @q.result.count
    end
  end

  def show
    @item = Item.find(params[:id])
  end

end
