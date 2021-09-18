class PetsController < ApplicationController
before_action :authorize, except: [:cemetery]

    def index
        # byebug
        user = User.find_by(:id => session[:user_id])
        pets = user.pets.where("alive = ?", true)
        render json: pets
    end

    def create
        # byebug
        user = User.find_by(:id => session[:user_id])
        #separate logic into "new" then validate and if pet.valid? save and using before_validation macro
        # pet = Pet.create!(pet_params)
        pet = user.pets.my_new_pet(pet_params)
        render json: pet, status: :created
    end

    def destroy
        # byebug
        pet = Pet.find_by(id: params[:id]).destroy
        render json: pet, status: 200
    end

    def update 
        # byebug
        pet = Pet.find_by(id: params[:id]).update(game_params)
        updatedPet = Pet.find_by(id: params[:id])
        render json: updatedPet, status: 200
    end

    def cemetery
        passed_pets = Pet.where("alive = ?", false).limit(8).obituary()
        render json: passed_pets, status: 200
    end

    private

    def pet_params
        params.permit(:breed, :name, :food, :activity,)
    end

    def game_params
        params.permit(:healthy, :hungry, :sleepy, :alive, :bored)

    end

end
