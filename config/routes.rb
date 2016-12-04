Rails.application.routes.draw do
  get 'kudomon' => 'kudomon#index'
  resources :kudomon
end
