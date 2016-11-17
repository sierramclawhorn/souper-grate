class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:category_id])
    @recipe = category.recipes.find(params[:id]) 
  end
end
