Rails.application.routes.draw do
  devise_for :users
  root 'diary#show'

  resource :diary, only: [:show, :edit, :update], controller: :diary
end
