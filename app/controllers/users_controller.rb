class UsersController < ApplicationController


    def create
        byebug
        user = User.create!(user_params)
        # if user.avatar == ""
        #     user.update(avatar: "https://live.staticflickr.com/65535/51434875121_54db17d433_o.png")
        # end
        session[:user_id] = user.id 
        # byebug
        render json: user, status: :created
    end

    def show
        # byebug
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    def destroy
        # byebug
        user = User.find_by(id: params[:id]).destroy
        session.delete(:user_id)
        render json: user, status: 200
        # head :no_content
    end

    def update
        # byebug
        User.find_by(:id => session[:user_id]).update!(user_params)
        user = User.find_by(:id => session[:user_id])
        # byebug
        render json: user, status: 200
    end

    private

    def user_params
        params.permit(:user_name, :password, :password_confirmation, :email, :image)
    
    end
   
end
