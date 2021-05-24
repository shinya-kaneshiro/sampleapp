class StaticPagesController < ApplicationController

  def top
    if logged_in?
      @user = User.find(session[:user_id])
    end
  end
end
