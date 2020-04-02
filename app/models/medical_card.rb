class MedicalCard < ApplicationRecord
  belongs_to :pet
  validates :symptoms, :treatment, presence: true
end
