Mrea::Application.routes.draw do
  
  root :to => "pages#home"
  get "pages/dashboard"
  get "pages/listings"  
  
end
