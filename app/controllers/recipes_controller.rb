class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render 'new'
    end
  end

  private

  def recipe_params
    params.require(:ingredient).permit(:name)
  end

end
