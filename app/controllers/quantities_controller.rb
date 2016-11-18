class QuantitiesController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @quantity = Quantity.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @quantity = Quantity.new(quantities_params)
    @quantity.recipe_id = @recipe.id
    if @quantity.save
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  private

  def quantities_params
    params.require(:quantity).permit(:quantity, :ingredient_name)
  end

end
