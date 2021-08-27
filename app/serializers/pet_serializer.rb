class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :birthday, :healthy, :hungry, :sleepy, :bored, :alive

  has_one :food
  has_one :activity
  has_one :breed
  has_one :user
end
