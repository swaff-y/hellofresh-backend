class RecipesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    # recipe = Recipe.all.order(created_at: :desc)
    # render json: recipe
    recipes = Recipe.page(params[:page]).order(created_at: :desc)
    render json: recipes, methods: ['total_pages']
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

  def get_week
    recipes = Week.find(params[:week_id]).recipes.all
    render json: recipes
  end

  def assign_week
    recipe = Recipe.find(params[:recipe_id])
    week = Week.find(params[:week_id])

    week.recipes << recipe

    render json: recipe, include: ['weeks']
  end

  private

  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end

end
