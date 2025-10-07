Rails.application.routes.draw do
  get "home/index"
  get "user/index"
  get "user/show"
  get "user_badge/index"
  get "user_badge/show"
  get "progress_entry/index"
  get "progress_entry/show"
  get "notification/index"
  get "notification/show"
  get "challenge/index"
  get "challenge/show"
  get "challenge_participant/index"
  get "challenge_participant/show"
  get "badge/index"
  get "badge/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
