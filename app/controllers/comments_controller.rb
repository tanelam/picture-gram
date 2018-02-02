class CommentsController < ApplicationController

  def index
    @user = User.find_by(id: session[:user_id])
    @user_comments = @user.comments
  end

  def new
    @comment = Comment.new
  end

  def create
    # @comment = Comment.create(comment_params)
    # redirect_to picture_path(@comment.picture)
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to picture_path(@comment.picture)
    else
      flash[:errors] = ["Your comment needs to be less than 10 characters :("]
      redirect_to picture_path(@comment.picture)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @user = User.find_by(id: session[:user_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end
  # 
  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  #   redirect_to pictures_path(@comment.picture)
  # end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end

end
