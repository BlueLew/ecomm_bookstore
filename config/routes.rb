Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  get 'users/update'
  get 'users/edit'
  root to: "books#index"
  resources :books, only: :show do
    resources :sales, only: [:new, :create]
  end
  get '/sales', to: 'sales#index'
  get 'authors', to: 'authors#index'
  get 'authors/show'
  get 'authors/create'
  get 'styleguide', to: 'styleguide#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
