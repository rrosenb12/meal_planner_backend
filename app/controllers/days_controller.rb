class DaysController < ApplicationController
    # should just automatically go, shouldn't need to be fetched
    def index
        @days = Day.all 
        render json: @days 
    end

    def show
        @day = Day.find(params[:id])
        render json: @day
    end
end
