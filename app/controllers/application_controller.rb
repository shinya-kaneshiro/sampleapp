class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # paramsハッシュからユーザーを取得する。
  # def set_user
  #   @user = User.find(params[:id])
  # end

end
