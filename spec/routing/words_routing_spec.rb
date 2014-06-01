require "spec_helper"

describe WordsController do
  describe "routing" do

    it "routes to #index" do
      get("/words").should route_to("words#index")
    end

    it "routes to #new" do
      get("/words/new").should route_to("words#new")
    end

    it "routes to #show" do
      get("/words/1").should route_to("words#show", :id => "1")
    end

    it "routes to #edit" do
      get("/words/1/edit").should route_to("words#edit", :id => "1")
    end

    it "routes to #create" do
      post("/words").should route_to("words#create")
    end

    it "routes to #update" do
      put("/words/1").should route_to("words#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/words/1").should route_to("words#destroy", :id => "1")
    end

  end
end
