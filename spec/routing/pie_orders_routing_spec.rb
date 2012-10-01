require "spec_helper"

describe PieOrdersController do
  describe "routing" do

    it "routes to #index" do
      get("/pie_orders").should route_to("pie_orders#index")
    end

    it "routes to #new" do
      get("/pie_orders/new").should route_to("pie_orders#new")
    end

    it "routes to #show" do
      get("/pie_orders/1").should route_to("pie_orders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pie_orders/1/edit").should route_to("pie_orders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pie_orders").should route_to("pie_orders#create")
    end

    it "routes to #update" do
      put("/pie_orders/1").should route_to("pie_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pie_orders/1").should route_to("pie_orders#destroy", :id => "1")
    end

  end
end
