Rails.application.routes.draw do
  devise_for :users
  resources :wikis
  devise_for :users
end
