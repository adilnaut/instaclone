class LikesController < ApplicationController
  def index
    
  end
  def create
    current_user.liked(params[:post_id])
    @post = Post.find(params[:post_id])
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    current_user.unliked(params[:post_id])
    @post = Post.find(params[:post_id])
    respond_to do |format|
      format.js {}
    end
  end
end
