class AssociationsController < ApplicationController
  def show
    @association = Organization.find(params[:id])
  end
end
