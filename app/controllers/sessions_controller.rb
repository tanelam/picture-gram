class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = ["Invalid User Name or Password. Please try again."]
      redirect_to login_path
    end
  end

  def destroy
    #logout
    session.delete(:user_id)
    redirect_to login_path
  end

end
