Rails.application.routes.draw do
  resources :movie_lists
  get 'session/signup'
  get 'session/login'
  get 'session/logout'
  resources :comments
  resources :ratings
  resources :events
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
