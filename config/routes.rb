Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :invitations
      resources :ratings
      resources :strains

      root to: "users#index"
    end
  get 'invitations/redeem'
  post 'invitations/redeem', to: 'invitations#register'
  resources :strains do
    resources :ratings
  end
  devise_for :users
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
