class ApplicationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @application = Application.new
    @mission = Mission.find(params[:mission_id])

    @application.user_id = current_user.id
    @application.mission_id = @mission.id

    if @application.save
      redirect_to account_missions_path
    else
      redirect_to @mission, notice: "Mmh, ça n'a pas fonctionné..."
    end
  end
end
