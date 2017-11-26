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
    params.require(:recipe).permit(:name, ingredient_ids:[], ingredients_attributes: [:name])
  end

end
