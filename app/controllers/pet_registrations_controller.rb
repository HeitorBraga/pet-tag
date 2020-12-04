class PetRegistrationsController < ApplicationController
  before_action :set_pet_registration, only: [:show, :edit, :update, :destroy]

  # GET /pet_registrations
  # GET /pet_registrations.json
  def index
    @pet_registrations = PetRegistration.all
  end

  # GET /pet_registrations/1
  # GET /pet_registrations/1.json
  def show
  end

  # GET /pet_registrations/new
  def new
    @pet_registration = PetRegistration.new
  end

  # GET /pet_registrations/1/edit
  def edit
  end

  # POST /pet_registrations
  # POST /pet_registrations.json
  def create
    @pet_registration = PetRegistration.new(pet_registration_params)

    respond_to do |format|
      if @pet_registration.save
        format.html { redirect_to @pet_registration, notice: 'Pet registration was successfully created.' }
        format.json { render :show, status: :created, location: @pet_registration }
      else
        format.html { render :new }
        format.json { render json: @pet_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_registrations/1
  # PATCH/PUT /pet_registrations/1.json
  def update
    respond_to do |format|
      if @pet_registration.update(pet_registration_params)
        format.html { redirect_to @pet_registration, notice: 'Pet registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_registration }
      else
        format.html { render :edit }
        format.json { render json: @pet_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_registrations/1
  # DELETE /pet_registrations/1.json
  def destroy
    @pet_registration.destroy
    respond_to do |format|
      format.html { redirect_to pet_registrations_url, notice: 'Pet Excluido com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_registration
      @pet_registration = PetRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_registration_params
      params.require(:pet_registration).permit(:name, :kind, :breed, :birthdate, :person_id, :photografy)
    end
end
