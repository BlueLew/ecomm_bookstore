Rails.application.routes.draw do
  get 'sales/index'
  get 'sales/show'
  get 'sales/new'
  get 'sales/create'
  get 'authors/index'
  get 'authors/show'
  get 'authors/create'
  get 'books/index'
  get 'books/show'
  get 'books/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
