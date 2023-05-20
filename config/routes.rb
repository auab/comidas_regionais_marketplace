Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :foods do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:index, :show, :destroy, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
