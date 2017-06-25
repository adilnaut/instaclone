class UsersController < ApplicationController

  before_action :set_user, only: [:show, :destroy, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @posts = @user.posts
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def edit

  end

  def update
    if @user.update_attributes user_params
      redirect_to @user
    else
      render "edit"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      sign_in @user
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :password, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
