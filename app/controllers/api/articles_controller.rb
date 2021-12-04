class Api::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    render json: Article.all
  end

  def show
    render json: @article
  end

  def create
    @article = Article.new(article_params)
    if (@article.save)
      render json: @article
    else
      render json: { errors: @article.errors }, status: 422
    end
  end

  def update
    if (@article.update(article_params))
      render json: @article
    else
      render json: { errors: @article.errors }, status: 422
    end
  end

  def destroy
    render json: @article.destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:author, :title, :body)
  end
end
