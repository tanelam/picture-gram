class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.valid?
     @user.save
     session[:user_id] = @user.id
     redirect_to user_path(@user)
   else
     flash[:errors] = @user.errors.full_messages
     redirect_to new_user_path
   end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_pictures = @user.pictures
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
