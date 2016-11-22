class DiaryController < InternalController
  def show
    @posts = Post.authored_by current_user
  end
end
