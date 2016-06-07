require "rails_helper"

RSpec.describe UserTestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_tests").to route_to("user_tests#index")
    end

    it "routes to #new" do
      expect(:get => "/user_tests/new").to route_to("user_tests#new")
    end

    it "routes to #show" do
      expect(:get => "/user_tests/1").to route_to("user_tests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_tests/1/edit").to route_to("user_tests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_tests").to route_to("user_tests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_tests/1").to route_to("user_tests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_tests/1").to route_to("user_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_tests/1").to route_to("user_tests#destroy", :id => "1")
    end

  end
end
