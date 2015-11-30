class ItemsController < ApplicationController
  autocomplete :product, :name,
               :extra_data => [:id, :alias, :price],
              # :scopes => [:value_from_price],
               :display_value => :full_name,
               :full => true

  def get_autocomplete_items(parameters)
    super(parameters).joins(:prices).where("products.id = prices.product_id").where("prices.store_id = #{params[:store_id]}")
  end

  def create
    @item = Item.create(list_params)
    redirect_to :back
  end


  private
  def list_params
    params.require(:item).permit(:product, :list_id, :price, :amount, :total)
  end
end