class UsersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def show
        # byebug
        user = User.find_by(id: session[:user_id])
        render json: user, include: :pets
    end

    private

    def user_params
        params.permit(:user_name, :password, :password_confirmation, :email)
    end

    def render_unprocessable_entity_response(invalid)
        # byebug
        render json: {errors: [invalid.record.errors.full_messages]}, status: :unprocessable_entity
    end
end
