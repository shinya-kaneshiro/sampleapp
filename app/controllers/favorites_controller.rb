class FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.build(post_id: params[:post_id])
    @favorite.save
    @post = @favorite.post
    
    # favorite = current_user.favorites.build(post_id: params[:post_id])
    # favorite.save

    # redirect_to posts_path
  end

  def destroy
    @favorite = Favorite.find_by(post_id: params[:post_id], user_id: current_user.id)
    @favorite.destroy
    @post = @favorite.post

    # redirect_to posts_path
  end
  
end
