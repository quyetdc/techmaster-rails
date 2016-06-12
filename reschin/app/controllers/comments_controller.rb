class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render partial: 'comments/comment', locals: { comment: @comment }, layout: false, status: :created
    else
      render :js => "alert('error saving comment');"
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :restaurant_id)
  end
end