class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
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
    Article.create(article_params)
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    Article.update(articles_params)
    redirect_to articles_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to tasks_path
  end

  private

  def article_params
    params.require(:article).permit(:title,:content)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
