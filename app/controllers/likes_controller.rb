class LikesController < ApplicationController
  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @like = Like.new(author_id: @user.id, post_id: @post.id)
    if @like.save
      flash[:success] = 'You liked this post!'
    else
      flash[:error] = 'ERROR!! Something went wrong.'
    end
    redirect_to user_post_path(@user.id, @post)
  end
end
