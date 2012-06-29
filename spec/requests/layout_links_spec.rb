require 'spec_helper'

describe "LayoutLinks" do
 
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Dashboard page at '/dashboard'" do
    get '/dashboard'
    response.should have_selector('title', :content => "Dashboard")
  end
  
  it "should have a Profile '/profile'" do
    get '/profile'
    response.should have_selector('title', :content => "Profile")
  end
    
  it "should have a listings page at '/listings'" do
    get '/listings'
    response.should have_selector('title', :content => "Listings")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end  
  
  #logged_out
  it "should have the right links on the logged_out layout" do
    visit root_path
    response.should have_selector('title', :content => "Home")
    click_link 'Sign up'
    #response.should have_selector('title', :content => "Sign up")
  end
  
  #logged_in
  it "should have the right links on the logged_in layout" do
    visit dashboard_path
    response.should have_selector('title', :content => "Dashboard")
    click_link "Profile"
    response.should have_selector('title', :content => "Profile")
    click_link "listings"
    response.should have_selector('title', :content => "Listings")
    response.should have_selector('a[href="/"]>img')
  end
end

