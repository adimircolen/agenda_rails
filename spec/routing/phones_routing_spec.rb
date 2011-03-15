require "spec_helper"

describe PhonesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/phones" }.should route_to(:controller => "phones", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/phones/new" }.should route_to(:controller => "phones", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/phones/1" }.should route_to(:controller => "phones", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/phones/1/edit" }.should route_to(:controller => "phones", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/phones" }.should route_to(:controller => "phones", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/phones/1" }.should route_to(:controller => "phones", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/phones/1" }.should route_to(:controller => "phones", :action => "destroy", :id => "1")
    end

  end
end
