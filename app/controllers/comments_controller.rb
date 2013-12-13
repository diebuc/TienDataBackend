class CommentsController < ApplicationController
  def create
    @store = Store.find(params[:store_id])
    @comment = @store.comments.create(params[:comment])
    redirect_to store_path(@post)
  end
end

