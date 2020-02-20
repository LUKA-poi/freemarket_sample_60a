
Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :users, only: [:index, :edit]
  resources :items, only: [:index, :create, :show,:new]
  resources :mypages, only: [:index,:profile] 
  resources :users do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4'
    end
  end
end