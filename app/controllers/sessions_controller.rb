class SessionsController < ApplicationController
  
  def new 
  end

  def create 
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      flash[:messages] = ["Logged in! Hello #{user.username}!"]
      redirect_to user_logs_path(user)
    else
      flash[:messages] = ["Invalid login credentials"]
      render :new
    end
  end

  def destroy 
    session.delete(:id)
    flash[:messages] = ["Logout successful, have a nice day!"]
    redirect_to root_path
  end

end