require "rails_helper"

RSpec.describe UsedProductsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/used_products").to route_to("used_products#index")
    end

    it "routes to #new" do
      expect(:get => "/used_products/new").to route_to("used_products#new")
    end

    it "routes to #show" do
      expect(:get => "/used_products/1").to route_to("used_products#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/used_products/1/edit").to route_to("used_products#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/used_products").to route_to("used_products#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/used_products/1").to route_to("used_products#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/used_products/1").to route_to("used_products#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/used_products/1").to route_to("used_products#destroy", :id => "1")
    end

  end
end
