class ItemsController < ApplicationController 
  
  def index 
    @user = User.find(session[:id])
    @items = Item.all
  end

end