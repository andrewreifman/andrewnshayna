Wedding::Application.routes.draw do
  resources :guests, only: [:create, :index]
  root to: 'application#index'
end
