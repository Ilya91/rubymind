class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update show destroy]
  before_action :require_same_user_users, only: %i[edit update destroy]
  before_action :require_admin, only: [:destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 3)
  end

  def new
    @user = User.new
  end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = 'Your profile was updated!'
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to the blog #{@user.username}"
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def show; end

  def destroy
    @user.destroy
    flash[:danger] = 'User and all articles have been deleted'
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
