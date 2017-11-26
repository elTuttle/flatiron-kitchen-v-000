class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients, class_name: RecipeIngredient
  has_many :ingredients, through: :recipe_ingredients

  validates_presence_of :name

end
