class CommentsController < ApplicationController

  def create
    @listing = Listing.find(params[:listing_id])
    @comment = Comment.new(comment_params)
    @comment.listing = @listing
    @comment.user = current_user

    if @comment.save 
      redirect_to @listing
    else
      render plain: @comment.errors.messages
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :body)
    end

end