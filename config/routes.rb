Rails.application.routes.draw do
  devise_for :users

  root 'diary#show'

  resources :posts, except: [:index, :show]

  namespace :public, path: '' do
    resources :posts, only: :show
  end
end
