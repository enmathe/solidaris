class AssociationsController < ApplicationController
  def index
    @associations = Organization.all
  end

  def show
    @association = Organization.find(params[:id])
    @missions = @association.missions
  end
end
