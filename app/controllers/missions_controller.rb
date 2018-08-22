class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

# en tant que user je peux voir les details d une mission
  def show
    @mission = Mission.find(params[:id])
  end
end



