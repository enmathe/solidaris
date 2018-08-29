class MissionsController < ApplicationController

  def index
    @mission = Mission.new
    @missions = Mission.all

    address_user = params[:query]
    if address_user.present?
      @missions = @missions.near(address_user, 1)
    end
    # @missions.where("title ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    @missions = (params[:category].present? and params[:category] != "categories") ? @missions.where("category ILIKE ?", "#{params[:category]}") : @missions

    missions_urg = []
    @missions.each do |mission|
      if mission.end_candidature_date != nil
        if (mission.end_candidature_date < (Date.today - 7)) && mission.recurrent == false
          missions_urg << mission
        end
      end
    end

    if params[:recurrency].present? and params[:recurrency] != "both"
      if params['recurrency'] == "recurrent"
        @missions = @missions.where(recurrent: true)
      elsif params['recurrency'] == "ponctuel"
        @missions = @missions.where(recurrent: false)
      elsif params['recurrency'] == "urgent"
        @missions = missions_urg
      end
    end






    if params[:starting_at].present?
      starting_on, ending_on = params[:starting_at].split(' au ')

      starting_on = Date.strptime(starting_on, '%d.%m.%Y')
      ending_on = Date.strptime(ending_on, '%d.%m.%Y')

      @missions = @missions.where("date(starting_at) BETWEEN ? AND ?", starting_on, ending_on)
    end
    # mission[starting_at]=30.08.2018+to+31.08.2018









    unless @missions.empty?
      @markers = marker(@missions.where.not(latitude: nil, longitude: nil))
    end
  end

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



