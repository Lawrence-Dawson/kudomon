Rails.application.routes.draw do
  devise_for :trainers
    root "kudomon#index"

    post 'kudomon/location'=> 'kudomon#location'
    get 'kudomon/location'=> 'kudomon#location'

    get 'kudomon/capture'=> 'kudomon#capture'
    post 'kudomon/capture'=> 'kudomon#capture'

    get 'kudomon/captured'=> 'kudomon#captured'

    get 'kudomon/kudogym' => 'kudomon#kudogym'

    get 'kudomon/battle' => 'kudomon#battle'
    post 'kudomon/battle' => 'kudomon#battle'


  resources :kudomon
end
