class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @user = User.find(params[:id])
    @image = Image.find(params[:id])
    @category = Category.find(params[:id])
    

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  

end
