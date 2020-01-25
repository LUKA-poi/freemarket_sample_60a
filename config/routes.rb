Rails.application.routes.draw do  
  resources :signups, only: [:index, :create] do
    collection do
      get 'member_info'
      get 'phone_number'
      get 'phone_number_conf'
      get 'postal_code'
      get 'credit'
      get 'ready'
    end
  end

  resources :logins, only: [:index, :new] do
    collection do
      get 'login'
      get 'new'
    end
  end
  
  root "mypage#index"
  resources :logoutpages, only: [:index]
  resources :creditpages, only: [:index]
end

