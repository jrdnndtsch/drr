require "rails_helper"

RSpec.describe ClinicalTrialsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clinical_trials").to route_to("clinical_trials#index")
    end

    it "routes to #new" do
      expect(:get => "/clinical_trials/new").to route_to("clinical_trials#new")
    end

    it "routes to #show" do
      expect(:get => "/clinical_trials/1").to route_to("clinical_trials#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clinical_trials/1/edit").to route_to("clinical_trials#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clinical_trials").to route_to("clinical_trials#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clinical_trials/1").to route_to("clinical_trials#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clinical_trials/1").to route_to("clinical_trials#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clinical_trials/1").to route_to("clinical_trials#destroy", :id => "1")
    end

  end
end
