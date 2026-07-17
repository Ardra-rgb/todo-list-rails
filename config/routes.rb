Rails.application.routes.draw do
  get "tasks/new"
  post "tasks/create"

  get "home/login"

  get "register/signup"
  post "register/signup"

  post "login", to: "login#index"

  get "dashboard/index"
  
  get "tasks/new"
  post "tasks/create"

  get "up" => "rails/health#show", as: :rails_health_check
end