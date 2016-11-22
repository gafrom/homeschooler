Rails.application.routes.draw do
  devise_for :users

  root 'diary#show'

  resources :posts, except: :index
end
