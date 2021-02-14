Rails.application.routes.draw do
  resources :books

  get 'books/index'
  get 'books/new'
  post 'books',to: 'books#create'

  root 'books#index'

  get 'books/:id', to: 'posts#show'
  get 'books/:id/edit', to: 'posts#edit'

  patch 'books/:id', to: 'books#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
