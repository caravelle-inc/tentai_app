  class ItemsController < ApplicationController

  def index
    @items = Item.where(flag: true).order('created_at DESC').page(params[:page])
    @q = Item.ransack(params[:q])
    @item_counts = Item.all.count
    if params[:q]
      @items = @q.result.order('created_at DESC').page(params[:page])
      @item_counts = @q.result.count
    end
  end

  def show
    @item = Item.find(params[:id])
    @hash = Gmaps4rails.build_markers(@item) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      marker.infowindow item.description
      marker.json({title: item.name})
    end
  end

  def flag_check
    @item = Item.find(params[:id])
    if @item.flag == true
      @item.flag = false
    else
      @item.flag = true
    end
    @item.save
  end

end
