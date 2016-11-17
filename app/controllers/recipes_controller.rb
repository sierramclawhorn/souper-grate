class RecipesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @rating = Rating.new
  end

  def new
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @recipe.destroy

    redirect_to category_path
  end

end
