Rails.application.routes.draw do
  root to: 'posts#index'
    resources :items, only: :index
end
