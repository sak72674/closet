Rails.application.routes.draw do
  devise_for :users
  get 'home/top'
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :codes, expect: [:new]
  resources :users, only: [:show, :edit, :update]
end
