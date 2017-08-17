class LogsController < ApplicationController 
  include LogHelper

  def index 
    @user = User.find(params[:user_id])
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
    @log = Log.find_by(item_id: params[:id])
    @log.update(complete: true)
    flash[:messages] = ["log item completed!"]
    redirect_to user_logs_path(@log.user.id)
  end
  
end
  