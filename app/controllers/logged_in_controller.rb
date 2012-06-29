class LoggedInController < ApplicationController
  
  def dashboard
     @title = "Dashboard"
  end
  
  def profile
    @title = "Profile"
  end
  
  def listings
    @title = "Listings"
  end
end
