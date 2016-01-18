class ItemsController < ApplicationController
  protect_from_forgery :except => :create

  autocomplete :product, :name,
               :extra_data => [:id, :alias, :price],
               # :scopes => [:value_from_price],
               :display_value => :full_name,
               :full => true

  def get_autocomplete_items(parameters)
    super(parameters).joins(:prices).where("products.id = prices.product_id").where("prices.store_id = #{params[:store_id]}")
  end

  def create
    if not Item.find_by_product(params[:item][:product]).nil?
      #TODO: criar validacao na view quando o produto já esta na lista
    else
      puts(list_params)
      @item = Item.create(list_params)
    end
    # redirect_to :back
    render js:''
  end

  def update
    @item = Item.find(params[:id])

    @item.update(list_params)

    @item.total = params[:item][:amount].to_f * params[:item][:price].to_f

    @item.update(list_params)
    redirect_to :back
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    #redirect_to :back
    render js:''
  end


  private
  def list_params
    params.require(:item).permit(:product, :list_id, :price, :amount, :total)
  end
end