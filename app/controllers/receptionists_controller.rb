class ReceptionistsController < ApplicationController
  before_action :set_receptionist, only: %i[ show edit update destroy ]

  # GET /receptionists or /receptionists.json
  def index
    @receptionists = Receptionist.all
  end

  # GET /receptionists/1 or /receptionists/1.json
  def show
  end

  # GET /receptionists/new
  def new
    @receptionist = Receptionist.new
  end

  # GET /receptionists/1/edit
  def edit
  end

  # POST /receptionists or /receptionists.json
  def create
    @receptionist = Receptionist.new(receptionist_params)

    respond_to do |format|
      if @receptionist.save
        format.html { redirect_to receptionist_url(@receptionist), notice: "Receptionist was successfully created." }
        format.json { render :show, status: :created, location: @receptionist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receptionists/1 or /receptionists/1.json
  def update
    respond_to do |format|
      if @receptionist.update(receptionist_params)
        format.html { redirect_to receptionist_url(@receptionist), notice: "Receptionist was successfully updated." }
        format.json { render :show, status: :ok, location: @receptionist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receptionists/1 or /receptionists/1.json
  def destroy
    @receptionist.destroy!

    respond_to do |format|
      format.html { redirect_to receptionists_url, notice: "Receptionist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receptionist
      @receptionist = Receptionist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receptionist_params
      params.require(:receptionist).permit(:name)
    end
end
