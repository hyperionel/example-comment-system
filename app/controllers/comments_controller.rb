class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to @comment.post, notice: 'comment was successfully created.'
    else
      redirect_to @comment.post, alert: 'failed to create comment'
    end
  end

  def destroy
    @comment.destroy
    redirect_to @comment.post, notice: 'comment was destroyed'
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id, :post_id)
  end
end
