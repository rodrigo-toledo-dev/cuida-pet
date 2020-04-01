require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe "check the pet types" do
    it "show get all types of pets" do
      expect(Pet.pet_types).to eql({"dog"=>0, "cat"=>1})
    end
  end

  describe "Testing pets" do
    it "Should be a invalid Pet" do
      pet = Pet.new
      expect(pet.valid?).to be_falsey
      expect(pet.errors.count).to eql(4)
    end
  end
end
