class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    @coming = []

    @missions.each do |mission|
      if mission.starting_at > Date.current
        @coming << mission
      else
        p " test"
      end
    end
  end
end
