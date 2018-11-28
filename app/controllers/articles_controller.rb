class ArticlesController < ApplicationController
  before_action :set_article, only: %i[edit update show destroy]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show; end

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

  def edit; end

  def update
    if @article.update(article_params)
      flash[:success] = 'Article was successfully updated'
      redirect_to @article
    else
      flash[:danger] = 'Article was not updated!'
      redirect_to edit_article_path(@article)
    end
  end

  def destroy
    @article.destroy
    flash[:success] = 'Article was successfully deleted'
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
