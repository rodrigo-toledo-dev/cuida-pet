class Pet < ApplicationRecord
  validates :name, :birthday, :race, :pet_type, presence: true
  enum  pet_type: [:dog, :cat]
  has_many :medical_cards
end
