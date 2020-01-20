class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.create(comments_params)
    redirect_to root_path
  end

  def destroy
    comment = current_user.comments.find(params[:id])
    comment.destroy if comment
    redirect_to root_path
  end


  private

  def comments_params
    params.require(:comment).permit(:content)
  end
end
