class CommentsController < ApplicationController
  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(params[:comment])
      redirect_to @post, :notice => "Comment created successfully!"
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post, :notice => "Comment deleted successfully!"
  end

end
