class PatientsController < ApplicationController
  before_action :authenticate_user!

  # GET /patients
  def index
    @patients = Patient.all
  end

  # GET /patients/1
  def show
    @patient = Patient.find(params[:id])
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient, notice: 'Patient was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /patients/1
  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to @patient, notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /patients/1
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_url, notice: 'Patient was successfully destroyed.'
  end

  private
    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:name)
    end
end
