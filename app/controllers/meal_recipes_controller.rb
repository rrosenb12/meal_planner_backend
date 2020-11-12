class MealRecipesController < ApplicationController

    def create
        @meal_recipe = MealRecipe.create(meal_recipe_params)
        render json: @meal_recipe 
    end

    private

    def meal_recipe_params
        params.require(:meal_recipe).permit(:meal_id, :recipe_id)
    end

end
