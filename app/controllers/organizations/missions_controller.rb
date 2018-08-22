class Organizations::MissionsController < ApplicationController
  before_action :authenticate_organization!
  before_action :set_organization

  def index
    @all_missions = Mission.all
    @missions = []
    @all_missions.each do |mission|
      if mission.organization.id == current_organization.id
        @missions << mission
      end
    end

    @coming = []
    @current = []
    @past = []
    @recurrent_current = []


    @missions.each do |mission|
      if mission.starting_at < Date.current
        @coming << mission
      elsif mission.recurrent == true && mission.starting_at > Date.current && mission.recurrency_ending_on < Date.current
        @recurrent_current << mission
      elsif mission.recurrent == true && mission.recurrency_ending_on > Date.current
        @past << mission
      else mission.recurrent == false && mission.starting_at > Date.current
        @past << mission
      end
    end
  end

  def show
    # organizations_mission GET    /organizations/missions/:id(.:format)
    @mission = Mission.find(params[:id])
  end

  # def new
  #   @mission = Mission.new()
  # end

  # def create
  #   raise
  #   @mission = Mission.new(mission_params)
  #   @mission.organization = Organization.find(current_organization.id)
  #   if @mission.save
  #     redirect_to organizations_mission_path(@mission)
  #   else
  #     render :new
  #   end
  # end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    @organization = current_organization.id
    @mission.update(mission_params)
    redirect_to organizations_mission_path(@mission), :notice => "Your changes have been saved!"
  end

  private

  def set_organization
    @organization = current_organization
  end

  def mission_params
    params.require(:mission).permit(
      :title,
      :address,
      :description,
      :skills_needed,
      :volunteers_needed
    )
  end
end
