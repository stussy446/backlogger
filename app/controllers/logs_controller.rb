class LogsController < ApplicationController 
  include LogHelper

  def index 
    @user = User.find(session[:id])
    @logs = @user.logs
    @categories = categorize(@logs)
    @games = @categories[0]
    @movies = @categories[1]
    @books = @categories[2]
  end
  
  def create 
   log = Log.new(user_id: params[:user_id], item_id: params[:item_id])
   if log.save 
    user = User.find(params[:user_id])
    flash[:messages] = ["Success! log added!"]
    redirect_to user_logs_path(user)
   else
    flash[:messages] = ["Process failed"]
    redirect_to items_path
   end
  end

  def edit 
  end

  def update 
    @log = Log.where(item_id: params[:id], user_id: session[:id])
    @log.update(complete: true)
    flash[:messages] = ["log item completed!"]
    redirect_to user_logs_complete_path(session[:id])
  end

  def complete
    @user = User.find(params[:id])
    @complete_logs = @user.logs.where(complete: true)
    @complete_items = categorize(@complete_logs)[3]
  end
  
end
  