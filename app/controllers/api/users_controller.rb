class Api::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]
    
    def index
        @user = User.all
        render json: @user
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render error: { error: 'Error in POST. Cannot create new user.'}, status: 400
        end
    end
    
    def update
        if @user
            @user.update(user_params)
            render json: { message: 'User was updated.'}, status: 200
        else
            render json: { error: 'Error in PUT. Cannot update user.'}, status: 400
        end
    end

    def destroy
        if @user
            @user.destroy
            render json: { message: 'User was deleted.'}, status: 200
        else
            render error: { error: 'Error in DELETE. Cannot delete user.'}, status: 400
        end
    end
    
    private
    
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :dob)
    end
    
end
