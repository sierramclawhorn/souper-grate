class RatingsController < ApplicationController
  def index
  end

  def create
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:recipe_id])
    @rating = @recipe.ratings.new(rating_params)
    @rating.user_id = current_user.id

    if @rating.save
      redirect_to [@category, @recipe] 
      # ajax to have rate partial disappear
      # limit user to rating each recipe only once
    else
      redirect_to [@category, @recipe]
    end
  end


private
def rating_params
  params.require(:rating).permit(:rating)
end

end


