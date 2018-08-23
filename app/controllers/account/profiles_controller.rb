class Account::ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit]

  def show
  end

  def edit
  end

  def update
    @profile = User.find(current_user.id)
    @profile.update(user_params)
    redirect_to account_profile_path(@profile), :notice => "Your changes have been saved!"
  end

  private

  def set_user
    @profile = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :phone_number,
      :description,
      :skills,
      :experiences,
      :picture
    )
  end
end
