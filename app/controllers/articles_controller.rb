class ArticlesController < ApplicationController
  def index
    @articles = Articles.all
  end

  def new
    @article = Articles.create(articles_params)
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
end
