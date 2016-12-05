Rails.application.routes.draw do
  devise_for :trainers
  root "kudomon#index"
  post 'kudomon/location'
  get 'kudomon/location'
  get 'kudomon/capture'
  get 'kudomon/captured'
  post 'kudomon/capture'
  resources :kudomon
end
