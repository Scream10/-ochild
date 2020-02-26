Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :kid do
    resources :users, only: [ :show ], shallow: true do
      resources :achievements, only: [ :new, :create, :edit, :update, :destroy ], shallow: true do
        resources :tasks, only: [ :new, :create ]
      end
    end
  end

  namespace :adult do
    resources :users, only: [ :show ], shallow: true do
      resources :goal, only: [ :create, :new ]
      resources :achievements, only: [ :new, :create, :edit, :update, :destroy ], shallow: true do
        resources :tasks, only: [ :new, :create ]
      end
    end
  end
end
