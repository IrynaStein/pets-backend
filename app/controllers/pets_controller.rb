class PetsController < ApplicationController
before_action :authorize

    def index
        # byebug
      
        user = User.find_by(:id => session[:user_id])
        pets = user.pets
        render json: pets
    end

    def create
        user = User.find_by(:id => session[:user_id])
        pet = user.pets.my_new_pet(pet_params)
        render json: pet, status: :created
    end

    def destroy
        # byebug
        pet = Pet.find_by(id: params[:id]).destroy
        render json: pet, status: 200
    end

    private

    def pet_params
        params.permit(:breed, :name, :food, :activity,)
    end

end
