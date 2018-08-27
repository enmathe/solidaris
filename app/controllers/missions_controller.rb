class MissionsController < ApplicationController

  def index
    # @missions = Mission.all
    # @coming = []
    # @past=[]

    # @missions.each do |mission|
    #   if mission.starting_at > Date.current
    #     @coming << mission
    #   else mission.end_candidature_date < Date.current
    #     @past << mission
    #   end
    # end

    if params[:query].present?
      @missions = Mission.where("title ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
      @markers = marker(@missions)
    else
      @missions = Mission.all.where.not(latitude: nil, longitude: nil)
      @markers = marker(@missions)
    end

  end

# en tant que user je peux voir les details d une mission
  def show
    @mission = Mission.find(params[:id])
    @organization = @mission.organization
  end

  private

  def marker(missions)
    @markers = missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        infoWindow: { content: render_to_string(partial: "/missions/map_box", locals: { mission: mission }) }
      }
    end
  end
end



