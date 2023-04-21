class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @comment = Comment.new(author_id: @user.id, text: params[:comment][:text], post_id: @post.id) # assign post_id
    if @comment.save
      flash[:success] = 'Comment created successfully.'
      redirect_to user_post_path(@user.id, @post)
    else
      flash[:error] = 'ERROR!! Something went wrong.'
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_back_or_to root_path
  end
end
