Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  post 'books',to: 'books#create'

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
