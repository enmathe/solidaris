class Organizations::MissionsController < ApplicationController
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
end
