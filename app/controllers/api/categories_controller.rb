class Api::CategoriesController < ApplicationController
  before_action :set_categorie, only: [:show, :update, :destroy]

  def index
    render json: Categorie.all
  end

  def show
    render json: @categorie
  end

  def create
    @categorie = Categorie.new(categorie_params)
    if (@categorie.save)
      render json: @categorie
    else
      render json: { errors: @categorie.errors }, status: 422
    end
  end

  def update
    if (@categorie.update(categorie_params))
      render json: @categorie
    else
      render json: { errors: @categorie.errors }, status: 422
    end
  end

  def destroy
    render json: @categorie.destroy
  end

  private

  def set_categorie
    @categorie = Categorie.find(params[:id])
  end

  def categorie_params
    params.require(:categorie).permit(:name,)
  end
end
