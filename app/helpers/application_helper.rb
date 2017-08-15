module ApplicationHelper

  def find_user
    @user = User.find(session[:id])
  end

end
