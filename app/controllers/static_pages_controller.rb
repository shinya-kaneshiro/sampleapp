class StaticPagesController < ApplicationController

  def top
    @posts = Post.order(created_at: :desc).last(3)

    if logged_in?
      @user = User.find(session[:user_id])
    end
  end
end
