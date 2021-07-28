Rails.application.routes.draw do
  resources :jobs
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  get "welcome/index"
  get "home/index"
  root to: "home#index"

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

end
