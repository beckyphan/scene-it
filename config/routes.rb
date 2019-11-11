Rails.application.routes.draw do
  root to: "movies#home"
  resources :lists
  get 'session/signup'
  get 'session/login'
  delete 'session/logout'
  resources :comments
  resources :ratings
  resources :events
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
