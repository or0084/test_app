class Admin::PostsController < ApplicationController
  def index
    @posts = Post.page(params[:])
  end

  def show
  end

  def edit
  end
end
