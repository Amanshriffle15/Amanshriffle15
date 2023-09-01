Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index , :show , :create, :update, :destroy]
  resources :products, only: [:index , :show , :create, :update, :destroy]
  resources :product_variants, only: [:index , :show , :create, :update, :destroy]

  resources :users do
    resource :user_profile, only: [:show, :create, :update, :destroy]
  end

  resources :products do
    member do
      get 'recommend_products_by_brand', to: 'products#recommend_by_brand'
    end
  end
end
