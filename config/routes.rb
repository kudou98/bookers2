Rails.application.routes.draw do
  get 'users/top'
  get 'books/top'
  get 'homes/top'
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  root "homes#top"

  get "/home/about" => "homes#about"
  resources :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
