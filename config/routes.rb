Rails.application.routes.draw do
  devise_for :users

  root 'diary#show'

  namespace :public, path: '' do
    resources :posts, only: :show
  end
  resources :posts, except: [:index, :show]
end
