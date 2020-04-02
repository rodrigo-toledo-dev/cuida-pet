require 'faker'
RSpec.describe "api/pets", type: :request do
  
  before(:all) do
    10.times do
      dog = Pet.create(name: Faker::Name.name, race: Faker::Name.name, birthday: '2000-01-01'.to_date, pet_type: 0)
      cat = Pet.create(name: Faker::Name.name, race: Faker::Name.name, birthday: '2000-01-01'.to_date, pet_type: 1)
      2.times do
        dog.medical_cards.build(symptoms: Faker::Name.name,treatment: Faker::Name.name).save!
        cat.medical_cards.build(symptoms: Faker::Name.name,treatment: Faker::Name.name).save!
      end
    end
  end

  describe "Describing the endpoint for all pets" do
    it "should return all pets in database" do
      get '/api/pets'
      body = JSON.parse(response.body)
      expect(body.size).to eql(25)
    end

    it "should have the correct keys" do
      get '/api/pets'
      body = JSON.parse(response.body)
      expect(body.first.keys).to eql(["id", "name", "race", "pet_type", "medical_cards"])
    end
    
  end
  
end
