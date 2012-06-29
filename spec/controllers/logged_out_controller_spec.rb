require 'spec_helper'

describe LoggedOutController do
  
  describe "Get 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end
end
