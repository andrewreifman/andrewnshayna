Wedding::Application.routes.draw do
  resources :guests, only: [:create, :index, :destroy]
  root to: 'application#index'
end
