class Api::MealsController < ApplicationController
    before_action :find_meal, only: [:show, :update, :destroy]

    # GET /meals
    def index
        @meal = Meal.all
        render json: @meal
    end

    # GET /meal/:id
    def show
        render json: @meal
    end

    # POST /meals
    def create
        @meal = Meal.new(meal_params)
        if @meal.save
            render json: @meal
        else
            render error: { error: 'Error in POST. Cannot create new meal.'}, status: 400
        end
    end

    # PUT /users/:id
    def update
        if @meal
            @meal.update(meal_params)
            render json: { message: 'Meal was updated.'}, status: 200
        else
            render json: { error: 'Error in PUT. Cannot update meal.'}, status: 400
        end
    end

    # DELETE /meals/:id
    def destroy
        if @meal
            @meal.destroy
            render json: { message: 'Meal was deleted.'}, status: 200
        else
            render error: { error: 'Error in DELETE. Cannot delete meal.'}, status: 400
        end
    end

    private

    def find_meal
        @meal = Meal.find(params[:id])
    end

    def meal_params
        params.require(:meal).permit(:users_id, :week, :days_id, :carbs_id)
    end

end
