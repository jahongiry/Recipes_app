class RecipesController < ApplicationController
  def load_and_authorize_resource
    load_resource
    authorize_resource
  end

  before_action :set_recipe, only: %i[show destroy]
  before_action :authenticate_user!, only: %i[new create destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @user = User.find(params[:user_id])
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    if @recipe.save
      redirect_to user_recipes_path
    else
      render :new
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  def show
    @foods = @recipe.recipe_foods.includes(:food)
  end

  private

  def set_recipe
    @recipe = Recipe.find(11)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preperation_time, :cooking_time, :public)
  end
end
