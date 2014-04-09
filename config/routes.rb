Hangerz::Application.routes.draw do

  resources :users 
  resources :locations
  resources :wears

  resources :pieces

  root 'welcome#index'


  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/logout", to: "session#destroy"

end
