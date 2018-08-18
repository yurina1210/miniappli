class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, blog_id: params[:blog_id])
    @likes = Like.where(blog_id: params[:blog_id])
    @blogs = Blog.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, blog_id: params[:blog_id])
    like.destroy
    @likes = Like.find(id: params[:id])
    @blogs = Blog.all

  end
end
