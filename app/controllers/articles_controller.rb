class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.author = current_user

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
