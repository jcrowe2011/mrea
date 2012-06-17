class LoggedInController < ApplicationController
  
  def profile
    @title = ""
  end
  
  def dashboard
    @title = "Dashboard"
  end
end
