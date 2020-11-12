class DaysController < ApplicationController

    def create
        @day = Day.create(day_params)
        render json: @day
    end

    private

    def day_params
        params.require(:day).permit(:user_id, :year, :month, :day)
    end
end
