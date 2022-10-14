class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :is_active)
  end
end
