Rails.application.routes.draw do
  get 'styleguide/index', to: 'styleguide#index'
  devise_for :users
  get 'users/show'
  get 'users/update'
  get 'users/edit'
  root to: "books#index"
  resources :books, only: :show do
    resources :sales, only: [:new, :create]
  end

  get '/sales', to: 'sales#index'
  get 'authors/index'
  get 'authors/show'
  get 'authors/create'
  get 'books/index'
  get 'books/show'
  get 'books/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
