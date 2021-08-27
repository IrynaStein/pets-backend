class Pet < ApplicationRecord
    belongs_to :user
    belongs_to :breed
    belongs_to :activity
    belongs_to :food
    
    validates :name, presence: true, uniqueness: true
    validates :avatar, presence: true
    # validates :food, inclusion: { in: %w(strawberry avocado charcoal icecream)}
    # validates :activity, inclusion: { in: %w(coding ball hiking swimming)}

end
