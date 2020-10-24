class UserRecipesController < ApplicationController

    def create
        @user_recipe = UserRecipe.create(user_recipe_params)
        render json: @user_recipe 
    end

    def destroy
        @user_recipe = UserRecipe.find(params[:id])
        @user_recipe.destroy 
    end

    private

    def user_recipe_params
        params.require(:user_recipe).permit(:user_id, :recipe_id)
    end
    
end
