Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  get "signup", to: "signup#index"
  resources :signup do
    collection do
      get "step1"
      post "step2"
    end
  end
end
