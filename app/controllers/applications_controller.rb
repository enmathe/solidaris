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
      render 'missions/show'
    end
  end
end

# mission_applications POST   /missions/:mission_id/applications(.:format)
