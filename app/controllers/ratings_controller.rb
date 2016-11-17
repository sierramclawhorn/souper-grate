class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def create
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(parame[:id])
    @rating = Rating.new(params.require(:rating).permit(:rating))

    if @rating.save
      redirect_to category_recipe_path
      flash[:notice] = 'Rating successfully saved.'
    else
      flash[:notice] = 'Unable to save rating.'
    end
  end
end