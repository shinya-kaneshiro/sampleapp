class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "新規登録に成功しました。"
      redirect_to user_path @user
    else
      render :new
    end
  end

  def show
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
    end
end
