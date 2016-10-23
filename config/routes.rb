Rails.application.routes.draw do
  root 'diary#show'

  resource :diary, only: [:show, :edit, :update], controller: :diary
end
