Rails.application.routes.draw do
  resources :feed, only: :index

  resources :bookmarks, only: :create
  resources :photos, only: :create
end
