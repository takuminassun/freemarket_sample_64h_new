Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :new, :create, :show]
  resources :users, only: :show do 
    resources :card, only: :index
  end
  resources :items, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  get '/mypage', to: "users#mypage"
  get '/profile', to: "users#profile"
  get '/confirmation', to: "users#confirmation"
  get '/logout', to: "users#logout"
  get '/product-listing', to: "posts#product-listing"
  get '/purchase', to: "posts#purchase"
  get '/show', to: "posts#show"
  get '/login', to: "devise/registration#login"

  root to: 'items#index'

end
