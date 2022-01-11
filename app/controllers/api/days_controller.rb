class Api::DaysController < ApplicationController
    def index
        @day = Day.all
        render json: @day
    end
end
