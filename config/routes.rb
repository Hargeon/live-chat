Rails.application.routes.draw do
  root 'pages#index'

  resources :sessions, only: [:create]
end
