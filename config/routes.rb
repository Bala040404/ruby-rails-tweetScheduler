Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/",to:"home#index", as: :root_path


  get "/about",to:"about#index", as: :about


  get "/signup",to:"registration#signin"
  post "/signup",to:"registration#addnew"


  delete "/signout",to:"signout#destroy"

  get "/signin",to:"login#getdetails"
  post "/signin",to:"login#verify"



  # Defines the root path route ("/")
  # root "articles#index"
end
