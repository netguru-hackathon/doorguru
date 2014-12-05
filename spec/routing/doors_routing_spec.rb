require "rails_helper"

RSpec.describe DoorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/doors").to route_to("doors#index")
    end

    it "routes to #new" do
      expect(:get => "/doors/new").to route_to("doors#new")
    end

    it "routes to #show" do
      expect(:get => "/doors/1").to route_to("doors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/doors/1/edit").to route_to("doors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/doors").to route_to("doors#create")
    end

    it "routes to #update" do
      expect(:put => "/doors/1").to route_to("doors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/doors/1").to route_to("doors#destroy", :id => "1")
    end

  end
end
