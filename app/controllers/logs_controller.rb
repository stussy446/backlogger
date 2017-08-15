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

end