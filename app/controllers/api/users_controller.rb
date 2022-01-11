class Api::UsersController < ApplicationController
    def index
        @user = User.all
        render json: @user
    end
end
