Rails.application.routes.draw do

  resources :types
  root 'public#index'
  
  resources :expenses
  resources :incomes
  resources :flocks
  resources :statuses

  # devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }

  get 'dashboard', to: 'public#dashboard'
  get 'financial', to: 'public#financial'
  get 'production', to: 'public#production'
  
end
