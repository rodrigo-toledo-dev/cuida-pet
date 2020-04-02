class Api::PetsController < ActionController::API

  def index
    render json: parse_to_json(Pet.page(params[:page]))
  end

  protected
  def parse_to_json(pets)
    json = []
    pets.each do |pet|
      json << {
        id: pet.id,
        name: pet.name,
        race: pet.race,
        pet_type: pet.pet_type,
        medical_cards: pet.medical_cards.map
      }
    end
    json
  end
end
