class Admin::PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])
  end

  def show
  end

  private


  def post_params
    params.require(:post).permit(:title, :body)
  end

end
