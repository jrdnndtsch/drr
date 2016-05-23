require 'rails_helper'

RSpec.describe "ClinicalTrials", type: :request do
  describe "GET /clinical_trials" do
    it "works! (now write some real specs)" do
      get clinical_trials_path
      expect(response).to have_http_status(200)
    end
  end
end
