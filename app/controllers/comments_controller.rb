class CommentsController < ApplicationController
  def create
    @store = Store.find(params[:store_id])
    @comment = @store.comments.create(comment_params)
    redirect_to store_path(@store)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end

