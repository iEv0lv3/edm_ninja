Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
    resources :comments, only: [:index, :show]
    resources :feeds, only: [:index, :show]
  end

  resources :feeds do
    resources :posts
    resources :comments
  end
end
