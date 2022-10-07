class Admin::PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
    @user_post = @post.user
  end

  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path
  end

  private


  def post_params
    params.require(:post).permit(:title, :body)
  end

end
