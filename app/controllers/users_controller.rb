class UsersController < ApplicationController


    def create
        user = User.create!(user_params)
        session[:user_id] = user.id 
        render json: user, status: :created
    end

    def show
        # byebug
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    private

    def user_params
        params.permit(:user_name, :password, :password_confirmation, :email)
    end

   
end
