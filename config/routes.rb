Mrea::Application.routes.draw do
  
  root :to => 'logged_out#home'
  match '/dashboard', :to => 'logged_in#dashboard'
  match '/profile', :to => 'logged_in#profile'  
  match '/listings', :to => 'logged_in#listings'
end
