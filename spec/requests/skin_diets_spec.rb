require 'rails_helper'

RSpec.describe "SkinDiets", type: :request do
  describe "GET /skin_diets" do
    it "works! (now write some real specs)" do
      get skin_diets_path
      expect(response).to have_http_status(200)
    end
  end
end
