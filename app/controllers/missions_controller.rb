class MissionsController < ApplicationController
  has_scope :category
  # has_scope :address
  has_scope :recurrency
  has_scope :time_range

  def index
    @missions = apply_scopes(Mission).all.order(created_at: :desc)

    @markers = marker(@missions.select { |mission| mission.is_localized }) unless @missions.empty?
  end

  def show
    @mission = Mission.find(params[:id])
    @organization = @mission.organization
  end

  private

  def marker(missions)
    @markers = missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        infoWindow: { content: render_to_string(partial: "/missions/map_box", locals: { mission: mission }) }
      }
    end
  end
end
