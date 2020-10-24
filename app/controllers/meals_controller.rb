class MealsController < ApplicationController
    #should just automatically go, 3 per day
    def index
        @meals = Meal.all
        render json: @meals 
    end

    def show
        @meal = Meal.find(params[:id])
        render json: @meal
    end
end
