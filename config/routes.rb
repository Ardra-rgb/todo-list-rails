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
  get "forgot_password", to: "passwords#new"

  get "up" => "rails/health#show", as: :rails_health_check
  delete "tasks/:id", to: "tasks#destroy", as: :task
  patch "tasks/:id/toggle", to: "tasks#toggle", as: :toggle_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete "tasks", to: "tasks#destroy_all", as: :destroy_all_tasks
end