class MedicalCardsController < ApplicationController
  before_action :set_medical_card, only: [:show, :edit, :update, :destroy]

  # GET /medical_cards
  # GET /medical_cards.json
  def index
    pet = Pet.find(params[:id])
    @medical_cards = pet.medical_cards.all
  end

  # GET /medical_cards/1
  # GET /medical_cards/1.json
  def show
  end

  # GET /medical_cards/new
  def new
    @medical_card = MedicalCard.new
  end

  # POST /medical_cards
  # POST /medical_cards.json
  def create
    @medical_card = MedicalCard.new(medical_card_params)

    if @medical_card.save
      redirect_to root_path, notice: 'Medical card was successfully created.'
    else
      render :new
    end
  end

  # DELETE /medical_cards/1
  # DELETE /medical_cards/1.json
  def destroy
    @medical_card.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Medical card was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_card
      @medical_card = MedicalCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_card_params
      params.require(:medical_card).permit(:pet_id, :symptoms, :treatment)
    end
end
