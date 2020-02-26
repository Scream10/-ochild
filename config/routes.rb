Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :kid do
    resources :achievements, only: [ :new, :create, :edit, :update, :destroy ]
    resources :tasks, only: [ :new, :create ]
    resources :users, only: [ :show ]
  end

  namespace :adult do
    resources :achievements, only: [ :new, :create, :edit, :update, :destroy ]
    resources :tasks, only: [ :new, :create ]
    resources :users, only: [ :show ]
    resources :goals, only: [ :create, :new ]
  end
end
