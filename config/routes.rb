Ticketee::Application.routes.draw do
  
  root "projects#index"
  
  post "/signin" , to: "sessions#create"
  
  get "/signin",to: "sessions#new"
  
resources :users
  
resources :projects do
resources :tickets
end
end


