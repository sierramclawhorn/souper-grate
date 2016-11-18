class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  def ingredient_name
    ingredient && ingredient.item
  end

  def ingredient_name=(item)
    self.ingredient = Ingredient.find_or_create_by(item: item) unless item.blank?
  end
end


# create new form for adding ingredients
# setup custom route to handle form submit
# ajax form submit to create objects and show ingredients on to existing form with value as new ingredient and quantity
