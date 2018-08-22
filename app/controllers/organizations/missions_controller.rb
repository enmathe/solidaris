class Organizations::MissionsController < ApplicationController
  before_action :authenticate_organization!

  def index
    @all_missions = Mission.all
    @missions = []
    @all_missions.each do |mission|
      if mission.organization.id == current_organization.id
        @missions << mission
      end
    end

    @coming = []
    @current = []
    @past = []
    @recurrent_current = []


    @missions.each do |mission|
      if mission.starting_at < Date.current
        @coming << mission
      elsif mission.recurrent == true && mission.starting_at > Date.current && mission.recurrency_ending_on < Date.current
        @recurrent_current << mission
      elsif mission.recurrent == true && mission.recurrency_ending_on > Date.current
        @past << mission
      else mission.recurrent == false && mission.starting_at > Date.current
        @past << mission
      end
    end
  end
end
