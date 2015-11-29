class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to :back
  end

  private
  def item_params
    params.require(:item).permit(:list_id, :product, :price)
  end
end