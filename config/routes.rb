Rails.application.routes.draw do
  devise_for :trainers
  root "kudomon#index"
  post 'kudomon/location'
  get 'kudomon/location'
  resources :kudomon
end
