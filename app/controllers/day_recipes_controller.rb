class DayRecipesController < ApplicationController
    def create
        @day_recipe = DayRecipe.create(day_recipe_params)
        render json: @day_recipe
    end

    private

    def day_recipe_params
        params.require(:day_recipe).permit(:day_id, :recipe_id)
    end

end
