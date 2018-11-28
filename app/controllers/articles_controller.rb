class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article was successfully created'
      redirect_to @article
    else
      # redirect_back(fallback_location: 'new')
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = 'Article was successfully updated'
      redirect_to @article
    else
      flash[:danger] = 'Article was not updated!'
      redirect_to edit_article_path(@article)
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:success] = 'Article was successfully deleted'
    redirect_to articles_path
  end

  private def article_params
    params.require(:article).permit(:title, :description)
  end
end
