require 'rails_helper'

RSpec.describe Account::MissionsController, type: :controller do
  describe "GET index" do
    let!(:user) { User.create(first_name: "John", last_name: "Doe", password: "password") }
    let!(:coming_mission) { Mission.create(category: "Collecte", starting_at: Date.current + 7) }
    let!(:recurrent_mission) { Mission.create(category: "Collecte", recurrent: true, recurrency_ending_on: Date.current + 7) }

    it "assigns coming_missions" do
      get :index
      expect(assigns(:coming_missions)).to eq([coming_mission])
    end

    it "assigns current_missions" do
      get :index
      expect(assigns(:current_missions)).to eq([recurrent_mission])
    end
  end
end
