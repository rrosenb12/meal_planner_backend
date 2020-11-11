class CalendarsController < ApplicationController

    skip_before_action :authorized, only: [:index, :create]

    def index
        @calendars = Calendar.all 
        render json: @calendars 
    end

    def show
        @calendar = Calendar.find(params[:id])
        render json: @calendar
    end

    def create
        @calendar = Calendar.create(calendar_params)
        render json: @calendar
    end

    private

    def calendar_params
        params.require(:calendar).permit(:month, :user_id)
    end
    
end
