Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users
    end
  end

  get "api/v1/session/status", to: "api/v1/sessions#is_logged_in?"
  delete "api/v1/logout/:id", to: "api/v1/sessions#destroy"
  post "api/v1/login", to: "api/v1/sessions#login"
end
