class UsersController < ApplicationController 

  def new 
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      flash[:messages] = ["Account successfully created and logged in!"] 
      redirect_to user_logs_path(@user)
    else
      flash[:messages] = @user.errors.full_messages
      p flash[:messages]
      redirect_to new_user_path
    end
  end



private 

def user_params 
  params.require(:user).permit(:email, :username, :password)
end



end
