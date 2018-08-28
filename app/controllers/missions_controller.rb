class MissionsController < ApplicationController

  def index
    @mission = Mission.new
    @missions = Mission.all

    @missions = params[:query].present? ? @missions.where("title ILIKE ?", "%#{params[:query]}%") : @missions
    @missions = (params[:category].present? and params[:category] != "") ? @missions.where("category ILIKE ?", "#{params[:category]}") : @missions

    missions_urg = []
    @missions.each do |mission|
      if mission.end_candidature_date != nil
        if (mission.end_candidature_date < (Date.today - 7)) && mission.recurrent == false
          @missions_urg << mission
        end
      end
    end

    if params[:recurrency].present?
      if params['recurrency'] == "recurrent"
        @missions = @missions.where(recurrent: true)
      elsif params['recurrency'] == "ponctuel"
        @missions = @missions.where(recurrent: false)
      else params['recurrency'] == "urgent"
        @missions = @missions_urg
      end
    end

    @missions = @missions.where.not(latitude: nil, longitude: nil)
    @markers = marker(@missions)
  end

    # if params[:recurrency].present?
    #   if params['recurrency'] == "recurrent"
    #     @recurrency = true
    #   elsif params['recurrency'] == "urgent"
    #     @recurrency = false
    #   end
    #   @missions = Mission.where(recurrent: @recurrency)
    #   @markers = marker(@missions)
    # else
    #   @missions = Mission.all
    #   @markers = marker(@missions)
    # end

    # if params[:query].present?
    #   @missions = Mission.where("title ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    #   @markers = marker(@missions)
    # else
    #   @missions = Mission.all.where.not(latitude: nil, longitude: nil)
    #   @markers = marker(@missions)
    # end

    # if params[:mission].present?
    #   category = params[:mission]["category"]
    #   @missions = Mission.where("category ILIKE ?", "#{category}").where.not(latitude: nil, longitude: nil)
    #   @markers = marker(@missions)
    # else
    #   @missions = Mission.all
    #   @markers = marker(@missions)
    # end


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

# en tant que user je peux voir les details d une mission
  def show
    @mission = Mission.find(params[:id])
    @organization = @mission.organization
  end

  private

  # def query_present?(missions)
  #   if params[:query].present?
  #     @missions = Mission.where("title ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
  #     # @markers = marker(@missions)
  #   else
  #     @missions
  #     # @markers = marker(@missions)
  #   end
  # end

  # def recurrency_present?(missions)
  #   @recurrency = false # default urgent (not recurrent)
  #   if params[:recurrency].present?
  #     if params['recurrency'] == "recurrent"
  #       @recurrency = true
  #     elsif params['recurrency'] == "urgent"
  #       @recurrency = false
  #     end
  #     @missions = Mission.where(recurrent: @recurrency)
  #     # @markers = marker(@missions)
  #   else
  #     @missions
  #     # @markers = marker(@missions)
  #   end
  # end

  # def category_present?(missions)
  #   if params[:mission].present?
  #     category = params[:mission]["category"]
  #     @missions = Mission.where("category ILIKE ?", "#{category}").where.not(latitude: nil, longitude: nil)
  #     # @markers = marker(@missions)
  #   else
  #     @missions
  #     # @markers = marker(@missions)
  #   end
  # end

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



