class StoresController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        @stores = Store.order('name').page(params[:page]).per(10)
      end
      format.json { render :json => Store.all.to_json }
    end
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def edit
    @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to @store
    else
      render 'new'
    end
  end

  def update
    @store = Store.find(params[:id])

    if @store.update(store_params)
      redirect_to @store
    else
      render 'edit'
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy

    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name, :description, :latitude, :longitude)
  end
end
