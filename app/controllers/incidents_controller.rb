class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  # GET /incidents
  # GET /incidents.json
  def index
    @incidents = Incident.all
  end

  # GET /incidents/1
  # GET /incidents/1.json
  def show
  end

  def success

  end

  # GET /incidents/new
  def new
    @incident = Incident.new
  end

  def detailed
    @incident = Incident.new
  end

  # GET /incidents/1/edit
  def edit
  end

  # POST /incidents
  # POST /incidents.json
  def create
    @incident = Incident.new(incident_params)

    respond_to do |format|
      if @incident.save
        format.html { render :success, notice: 'Incident was successfully created.' }
        format.json { render :show, status: :created, location: @incident }
      else
        format.html { render params[:detailed_page].blank? ? :new : :detailed }
        format.json { render json: @incident.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incident
      @incident = Incident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incident_params
      params.require(:incident).permit(:school_name, :incident_type, :incident, :name, :email_or_phone, :role, :people_involved, :observers, :observed_at, :location, :location_details, :description, incident_attachments_attributes: [:id, :incident_id, :avatar])
    end
end
