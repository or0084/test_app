class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = Post.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'ユーザーの編集に成功しました！'
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :is_active)
  end
end
