Rails.application.routes.draw do
  resources :travels
  resources :activities
  resources :bookmarks, only: :create
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #

  resources :feed, only: :index
end
