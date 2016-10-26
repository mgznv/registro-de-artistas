Rails.application.routes.draw do
  devise_for :users
  resources :artists
  root 'artists#index'
end
