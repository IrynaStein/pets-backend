class PetsController < ApplicationController

    def index
    render json: {greeting: "hello"}
    end
end
