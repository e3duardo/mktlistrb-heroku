class UserPricesController < ApplicationController
  def index
    @userprices = UserPrice.order('created_at').page(params[:page]).per(10)
  end

  private
  def list_params
    params.require(:item).permit(:product_id, :product_name, :product_alias, :price)
  end
end
