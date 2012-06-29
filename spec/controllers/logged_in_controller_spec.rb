require 'spec_helper'
require 'rspec'

describe LoggedInController do
  
  describe "Get 'dashboard'" do
    it "should be successful" do
      get 'dashboard'
      response.should be_success
    end
      
  end  
  describe "Get 'Profile' " do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
  end
      
  describe "Get 'listings'" do
    it "should be successful" do
      get 'listings'
      response.should be_success
    end
  end    
end
