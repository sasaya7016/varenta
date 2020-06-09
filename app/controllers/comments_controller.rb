class CommentsController < ApplicationController
  before_action :correct_user, only: [:destroy]

  def create
    comment = Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
    comment.user_id = current_user.id
  end

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/tweets/#{comment.tweet.id}"
  end
  
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

  def correct_user
    comment = current_user.comments.find_by(id: params[:id])
    unless comment
      redirect_to root_url
    end
  end
end
