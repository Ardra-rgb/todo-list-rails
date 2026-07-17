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
  
  get "logout", to: "login#logout"

  get "up" => "rails/health#show", as: :rails_health_check
  delete "tasks/:id", to: "tasks#destroy", as: :task
  patch "tasks/:id/toggle", to: "tasks#toggle", as: :toggle_task
end