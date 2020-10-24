class CalendarsController < ApplicationController

    def index
        @calendars = Calendar.all 
        render json: @calendars 
    end

    def show
        @calendar = Calendar.find(params[:id])
        render json: @calendar
    end
    
end
