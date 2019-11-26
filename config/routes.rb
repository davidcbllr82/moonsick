Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :attendees, only: [:show, :create]
    resources :moments, only: [:index, :create, :update, :destroy]
  end
  resources :playlists, only: [:index, :create, :destroy]
  resources :profiles, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

