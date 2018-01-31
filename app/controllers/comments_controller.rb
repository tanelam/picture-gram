class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to picture_path(@comment.picture)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to picture_path(@comment.picture)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end

end
