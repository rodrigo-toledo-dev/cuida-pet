class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to root_path, notice: 'Pet was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def pet_params
      params.require(:pet).permit(:name, :birthday, :race, :pet_type)
    end
end
