class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_login(params[:session][:login])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash[:danger] = "Invalid login/password"
      render "new"
    end
  end

  def destroy
  end

end
