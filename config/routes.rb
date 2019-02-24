Rails.application.routes.draw do
  devise_for :users
  root controller: :products, action: :index
  resources :categories do
    resources :products, only: [:index]
  end
end
