class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    @coming = []
    @past=[]

    @missions.each do |mission|
      if mission.starting_at > Date.current
        @coming << mission
      else mission.end_candidature_date < Date.current
        @past << mission
      end
    end
  end

# en tant que user je peux voir les details d une mission
  def show
    @mission = Mission.find(params[:id])
  end
end



