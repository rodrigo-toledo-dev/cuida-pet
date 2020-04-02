require 'rails_helper'

RSpec.describe MedicalCard, type: :model do
  describe "Testing MedicalCard" do
    it "Should be a invalid MedicalCard" do
      medical_card = MedicalCard.new
      expect(medical_card.valid?).to be_falsey
      expect(medical_card.errors.count).to eql(3)
    end
  end
end
