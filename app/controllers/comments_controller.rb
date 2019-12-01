class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      Services::BroadcastService.new(@comment.content, current_user, 'comment').send!
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end

end
