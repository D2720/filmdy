Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'page#index'
  get 'users' => 'users#index'
  get 'profile' => 'users#profile'
end
