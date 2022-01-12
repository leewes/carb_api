class Api::CarbsController < ApplicationController
    before_action :find_carb, only: [:show, :update, :destroy]

    def index
        @carb = Carb.all
        render json: @carb
    end

    # GET /carbs/:id
    def show
        render json: @carb
    end

    # POST /carbs
    def create
        @carb = Carb.new(carb_params)
        if @Carb.save
            render json: @carb
        else
            render error: { error: 'Error in POST. Cannot create new carb.'}, status: 400
        end
    end

    # PUT /users/:id
    def update
        if @carb
            @carb.update(carb_params)
            render json: { message: 'Carb was updated.'}, status: 200
        else
            render json: { error: 'Error in PUT. Cannot update carb.'}, status: 400
        end
    end

    # DELETE /carbss/:id
    def destroy
        if @carb
            @carb.destroy
            render json: { message: 'Carb was deleted.'}, status: 200
        else
            render error: { error: 'Error in DELETE. Cannot delete carb.'}, status: 400
        end
    end

    private

    def find_carb
        @carb = Carb.find(params[:id])
    end

    def carb_params
        params.require(:carb).permit(:breakfast, :lunch, :dinner)
    end
end
