class Posts::LikesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    current_user.users_posts.create(post: post)
    redirect_to post, notice: "liked post!"
  end

  def destroy
    post = Post.find(params[:post_id])
    current_user.users_posts.find_by(post: post).destroy!
    redirect_to post, notice: "unliked post!"
  end
end
