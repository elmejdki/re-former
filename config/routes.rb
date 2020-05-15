Rails.application.routes.draw do
  root to: 'users#index'

  resources :users, only: %I[:index :new :create :edit :update]
end
