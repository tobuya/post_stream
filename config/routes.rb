Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get 'users/show'
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
  end
end
