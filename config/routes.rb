Rails.application.routes.draw do
  devise_for :trainers
  root "kudomon#index"
  resources :kudomon
end
