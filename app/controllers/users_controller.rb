class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])

  def destroy
    # URLで指定した番号のモデルを削除する

    @user = User.find(params[:id])
    @user = User.destroy
  end
end
