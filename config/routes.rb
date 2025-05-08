Rails.application.routes.draw do
  root 'home#index'  # トップページを "dishes#index" に設定
  get "generate", to: "dishes#generate"
  get "home/index"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
