class DiaryController < ApplicationController
  def show
    @content = Post.render
  end

  def edit
    @post = Post.take
  end

  def update
    @post = Post.take

    if @post.update body: params[:post]
      head :ok
    else
      head 412
    end
  end
end
