require "rails_helper"

RSpec.describe SkinDietsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skin_diets").to route_to("skin_diets#index")
    end

    it "routes to #new" do
      expect(:get => "/skin_diets/new").to route_to("skin_diets#new")
    end

    it "routes to #show" do
      expect(:get => "/skin_diets/1").to route_to("skin_diets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skin_diets/1/edit").to route_to("skin_diets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skin_diets").to route_to("skin_diets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skin_diets/1").to route_to("skin_diets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skin_diets/1").to route_to("skin_diets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skin_diets/1").to route_to("skin_diets#destroy", :id => "1")
    end

  end
end
