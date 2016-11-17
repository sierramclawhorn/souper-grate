class RecipesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
