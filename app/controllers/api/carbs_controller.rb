class Api::CarbsController < ApplicationController
    def index
        @carb = Carb.all
        render json: @carb
    end
end
