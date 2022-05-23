Rails.application.routes.draw do
  resources :followers
  resources :tweets
  devise_for :users
  root to: 'tweets#index'
  get '/newFollower/:id', to: 'followers#follow',as: 'follow'
  get '/following', to: 'followers#following',as: 'following'
  get '/unfollow/:id', to: 'followers#unfollow',as: 'unfollow'
  resources :profile,only: [:index,:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
