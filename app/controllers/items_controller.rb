class ItemsController < ApplicationController 
  include ApplicationHelper

  def index 
    @user = User.find(session[:id])
    @items = Item.all
  end

  def new 
    @item = Item.new
    @user = find_user
  end

  def create 
    @item = Item.new(item_params)
    if @item.save 
      flash[:messages] = ["Custom Item Created!"]
      redirect_to items_path
    else
      flash[:messages] = @item.errors.full_messages
      redirect_to new_item_path
    end
  end


private 

def item_params
  params.require(:item).permit(:title, :genre, :length, :category, :creator_id)
end

end