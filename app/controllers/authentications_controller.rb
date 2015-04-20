class AuthenticationsController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user && if user.authenicate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    end
  end
end

end