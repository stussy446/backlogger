class ItemsController < ApplicationController 
  include ApplicationHelper
  include ItemHelper

  def index 
    @user = User.find(session[:id])
    @categories = categorize_items(Item.all)
    @games = @categories[0]
    @movies = @categories[1]
    @books = @categories[2]
  end

  def new 
    @item = Item.new
    @user = find_user
  end

  def create 
    @item = Item.new(item_params)
    if @item.save 
      user = User.find(params[:item][:creator_id])
      Log.create(user: user, item: @item)
      flash[:messages] = ["Custom Item Created and logged!"]
      redirect_to user_logs_path(user)
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