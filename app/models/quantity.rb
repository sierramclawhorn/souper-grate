class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def ingredient_name
    ingredient && ingredient.name
  end

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by_name(name) unless name.blank?
  end
end
