class RecipesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    # recipe = Recipe.all.order(created_at: :desc)
    # render json: recipe
    recipe = Recipe.page(params[:page]).order(created_at: :desc)
    render json: recipe, methods: ['total_pages']
  end

  def create
    recipe = Recipe.create!(recipe_params)
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    recipe&.destroy
    render json: { message: 'Recipe deleted!' }
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end

end
