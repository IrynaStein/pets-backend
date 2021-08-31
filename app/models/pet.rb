require 'date'
class Pet < ApplicationRecord
    belongs_to :user
    belongs_to :breed
    belongs_to :activity
    belongs_to :food
    
    validates :name, presence: true, uniqueness: true
    validates :avatar, presence: true
    # validates :food, inclusion: { in: %w(strawberry avocado charcoal icecream)}
    # validates :activity, inclusion: { in: %w(coding ball hiking swimming)}

    # def create_pet(params)
    #     breed = Breed.find_by(name: params.breed)
    #     user = User.find_by(id: 1)
    #     food = Food.find_by(name: params.food)
    #     activity = Activity.find_by(name: params.activity)
    #     age_stage = breed.age_stages.find_by(id: 1).image_url
    #     pet = Pet.create(
    #         name: params['name'],
    #         breed: breed,
    #         avatar: age_stage,
    #         birthday: Date.today.to_s,
    #         healthy: true,
    #         hungry: 4,
    #         sleepy: 1, 
    #         bored: 3, 
    #         alive: true,
    #         user: user
    #     )
    # end
end
