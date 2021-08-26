class SessionsController < ApplicationController
  before_action :authorize, only: [:destroy] 
    def create
        # byebug
        user = User.find_by(user_name: params[:user_name])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id 
            # byebug
            render json: user, status: :created
        else 
            render json: {errors: ["Invalid user name or password"]}, status: :unauthorized
        end
    end

    def destroy
        # byebug
        session.delete(:user_id)
        head :no_content
    end

    def authorize
        render json: {errors: ["Unauthorized access, please login"]}, status: :unauthorized unless session.include?(:user_id)
    end
end
