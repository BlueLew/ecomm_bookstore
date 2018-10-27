require 'sidekiq/web'
Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show, :edit, :update]
  root to: "books#index"
  resources :books, only: :show do
    resources :sales, only: [:new, :create]
  end
  get '/sales', to: 'sales#index'
  get 'authors', to: 'authors#index'
  get 'authors/show'
  get 'authors/create'
  get 'admin/authors'
  get 'admin/books'
    mount Sidekiq::Web => '/sidekiq'
  get 'styleguide', to: 'styleguide#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
