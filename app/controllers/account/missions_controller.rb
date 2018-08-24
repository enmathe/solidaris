class Account::MissionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_organization

  def index
    @user_missions = current_user.missions
    @missions = Mission.all

    @coming = []
    @past = []
    @recurrent_current = []


    @user_missions.each do |mission|
      if mission.starting_at > Date.current
        @coming << mission
      elsif mission.recurrent == true && mission.recurrency_ending_on > Date.current
        @recurrent_current << mission
      elsif mission.recurrent == true && mission.recurrency_ending_on < Date.current
        @past << mission
      else mission.recurrent == false && mission.starting_at < Date.current
        @past << mission
      end
    end
  end

  def set_organization
    @user = current_user
  end
end
