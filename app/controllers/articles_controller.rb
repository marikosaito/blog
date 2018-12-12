class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :show, :destroy, :update]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to action: :index
  end

  def edit
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if article.user_id == current_user.id
    redirect_to action: :index
  end

  def update
    @article.update(article_params) if@article.user_id == current_user.id
    redirect_to action: :index
  end

  def show
  end

  private
  def article_params
    params.require(:article).permit(:text)
  end

  def set_article
    @article = Article.find(params[:id])
    end


end
