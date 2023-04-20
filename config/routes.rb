Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create destroy] do
      resources :comments, only: %i[new show create destroy]
      resources :likes, only: [:create]
    end
  end
end
