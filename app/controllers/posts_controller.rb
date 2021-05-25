class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
  end

  def create
    @post = Post.new(permit_params)
    @post.save!
    redirect_to post_path @post.user_id
    # redirect_to action: 'show'
  end


  private
    def permit_params
      params.require(:post).permit(:image, :title, :comment, :user_id)
    end

end
