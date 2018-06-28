class Public::PostsController < ApplicationController
  before_action :set_post

  def show
    @content = @post.render
    render 'posts/show'
  end

  private

  def post_params
    params.require(:post).permit(:body).merge(user_id: current_user.id)
  end

  def posts_base
    user_signed_in? ? Post : Post.visible
  end

  def set_post
    @post ||= posts_base.find(params[:id])
  end
end
