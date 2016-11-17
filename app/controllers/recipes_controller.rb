class RecipesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @rating = Rating.new

    if @rating.save
      redirect_to category_recipe_path
      flash[:notice] = 'Rating successfully saved.'
    else
      flash[:notice] = 'Unable to save rating.'
    end
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
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.new(recipe_params)
    @recipe.user_id = current_user.id

    if @recipe.save
      redirect_to [@category, @recipe]
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to [@category, @recipe]
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @recipe.destroy

    redirect_to @category
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, 
                                   :description,
                                   :instructions,
                                   :prep_time,
                                   :difficulty_level)
  end
end
