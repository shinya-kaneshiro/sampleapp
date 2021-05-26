class StaticPagesController < ApplicationController

  def top
    @posts = Post.order(id: "desc").limit(3)
    
    if logged_in?
      @user = User.find(session[:user_id])
    end
  end
end
