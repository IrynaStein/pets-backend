class PetsController < ApplicationController
before_action :authorize

    def index
        # byebug
        user = User.find_by(:id => session[:user_id])
        pets = user.pets
        render json: pets
    end

    def create
        # byebug
        user = User.find_by(:id => session[:user_id])
        breed = Breed.find_by(name: params['breed'])
        # user = User.find_by(id: 1)
        food = Food.find_by(name: params['food'])
        activity = Activity.find_by(name: params['activity'])
        age_stage = breed.age_stages.find_by(id: 1).image_url
        # byebug
        pet = user.pets.create!(
            name: params['name'],
            breed: breed,
            food: food,
            activity: activity,
            avatar: age_stage,
            birthday: Date.today.to_s,
            healthy: true,
            hungry: 1,
            sleepy: 4, 
            bored: 3, 
            alive: true
        )
        # pet = user.pets.my_new_pet(pet_params)
        # byebug
        render json: pet, status: :created
    end

    def destroy
        # byebug
        Pet.find_by(id: params[:id]).destroy
        head :no_content
    end

    private

    def pet_params
        params.permit(:breed, :name, :food, :activity)
    end

end
