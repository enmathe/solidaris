class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    @past = []
    @current = []

    missions.each do |mission|
      if mission.ending_on < Date.current
        @past << mission
      else
        @current << mission
      end
    end
  end

# en tant que user je peux voir les details d une mission
  def show
    @mission = Mission.find(params[:id])
  end
end



