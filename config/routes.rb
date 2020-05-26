Rails.application.routes.draw do

  devise_for :users
  root 'listings#index'

  resources :listings, :categories, :users
  resources :rooms, :only => [:index, :create, :show, :destroy]
  resources :messages, :comments, :only => [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
