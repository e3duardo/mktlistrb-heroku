class ListsController < ApplicationController
  layout "emulate_client", :only => :show

  def index
    @lists = List.order('name').page(params[:page]).per(10)
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new

    respond_to do |format|
      format.html
      format.json { render :json => List.find(params[:id]) , :include => :items }
    end
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to @list
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :store_id)
  end
end