class ApplicationsController < ApplicationController
  def create
    @application = Application.new
    @mission = Mission.find(params[:mission_id])
    @application.user_id = current_user.id
    @application.mission_id = @mission.id
    if @application.save
      redirect_to account_profile_path(current_user)
    else
      render 'missions/show'
    end
  end
end

# mission_applications POST   /missions/:mission_id/applications(.:format)
