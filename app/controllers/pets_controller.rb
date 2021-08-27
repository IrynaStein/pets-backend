class PetsController < ApplicationController

    def index
        # byebug
        pets = Pet.all
    render json: pets
    end
end
