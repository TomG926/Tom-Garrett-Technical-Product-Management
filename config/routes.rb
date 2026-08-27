Rails.application.routes.draw do
  root "pages#home"

  get "about", to: "pages#about", as: :about

  resources :work, only: %i[index show], controller: "work", param: :slug

  get "up" => "rails/health#show", as: :rails_health_check
end
