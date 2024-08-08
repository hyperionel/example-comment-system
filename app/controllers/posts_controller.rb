class PostsController < ApplicationController
  before_action :set_post, only: :show

  def index
    @posts = Post.all
  end

  def show
    @comments = @post.comments.where(parent_id: '').order(created_at: :asc)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
