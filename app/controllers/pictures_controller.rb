class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @comment = Comment.find_by(user: session[:user_id])
    @comment.destroy
    redirect_to picture_path(@comment.picture_id)
  end

end
