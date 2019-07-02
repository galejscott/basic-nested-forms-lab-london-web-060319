class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredient
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to ingredient
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :recipe_id)
  end
end