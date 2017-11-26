class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients, class_name: RecipeIngredient
  has_many :recipes, through: :recipe_ingredients

  validates_presence_of :name

end
