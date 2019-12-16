Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :new, :create, :show]
  get '/mypage', to: "posts#mypage"
  get '/profile', to: "posts#profile"
  get '/user-confirmation', to: "posts#user-confirmation"
  get '/logout', to: "posts#logout"
  get '/product-listing', to: "posts#product-listing"
  get '/purchase', to: "posts#purchase"
  get '/show', to: "posts#show"
  get '/login', to: "devise/registration#login"
  get '/ancestry', to: "items#ancestry"
  root to: 'posts#index'

  
end
