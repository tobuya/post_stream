class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
    @user_posts = Post.where(author_id: @user.id)
    @user_comments = Comment.where(user_id: @user.id)
    @post_comments = Comment.where(post_id: @user_posts.ids)
  end

  def show
    @post = Post.find(params[:id])
    @post_comments = Comment.where(post_id: @post)
    @like = Like.new
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    if params[:post].present? && params[:post][:title].present? && params[:post][:text].present?
      @post = Post.new(author_id: @user.id, title: params[:post][:title], text: params[:post][:text])
      if @post.save
        redirect_to user_posts_path(@user)
      else
        render :new
      end
    else
      flash[:error] = 'Please fill in all required fields.'
      render :new
    end
  end
end
