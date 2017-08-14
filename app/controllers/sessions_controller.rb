class SessionsController < ApplicationController
  
  def new 
  end

  def create 
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      flash[:messages] = ["Logged in! Hello #{user.username}!"]
      redirect_to user_items_path(user)
    else
      flash[:messages] = ["Invalid login credentials"]
      render :new
    end
  end

  def destroy 
  end

end