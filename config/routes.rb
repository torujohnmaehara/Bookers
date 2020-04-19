Rails.application.routes.draw do
  'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :books
root 'books#new'
end
