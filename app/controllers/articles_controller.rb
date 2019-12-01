class ArticlesController < ApplicationController

  def index
    @articles = Article.order(created_at: :desc).limit(10)
  end

  def show
    @article = Article.find params[:id]
    @comments = @article.comments.order(created_at: :desc).limit(5)
  end

  def new
    @article = Message.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to articles_path
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end

end
