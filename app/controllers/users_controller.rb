class UsersController < ApplicationController
  def index
    @users = User.includes(:posts).all
    @current_user = current_user
  end

  def show
    @user = User.includes(posts: :comments).find(params[:id])
    @user_posts = @user.posts
    @recent_posts = @user.get_recent_posts.includes(:author, :comments)
  end
end
