Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :participants, only: [:index, :new, :create, :show, :update, :destroy] do
    resources :trinities, only: [:index, :new, :create, :show, :update, :destroy] do
      get  'trinities',    to: 'participants#trinities'
      post 'custom-match', to: "trinities#custom_match"
    end

  end

  resource :participant, only: [:show] do
    post 'activate' , to: 'activation_code#activate'
  end

  # Not for production
  get 'firebase_token', to: 'tokens#firebase_token'

  root to: "home#index"
end
