require 'rails_helper'

RSpec.describe "UserTests", type: :request do
  describe "GET /user_tests" do
    it "works! (now write some real specs)" do
      get user_tests_path
      expect(response).to have_http_status(200)
    end
  end
end
