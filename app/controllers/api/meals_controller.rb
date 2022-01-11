class Api::MealsController < ApplicationController
    
    # GET /meals
    def index
        @meals = Meal.all
        render json: @meals
    end

    # GET /meal/:id
    def show
        @meal = Meal.find(params[:id])
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
        @meal = Meal.find(params[:id])
        if @meal
            @meal.update(meal_params)
            render json: { message: 'Meal was updated.'}, status: 200
        else
            render json: { error: 'Error in PUT. Cannot update meal.'}, status: 400
        end
    end

    # DELETE /meals/:id
    def destroy
        @meal = Meal.find(params[:id])
        if @meal
            @meal.destroy
            render json: { message: 'Meal was deleted.'}, status: 200
        else
            render json: { error: 'Error in DELETE. Cannot delete meal.'}, status: 400
        end
    end

end
