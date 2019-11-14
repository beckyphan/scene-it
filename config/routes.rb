Rails.application.routes.draw do
  root to: "movies#home"
  resources :lists
  get 'signup', to: "session#signup"
  get 'login', to: "session#login"
  post 'login', to: "sessions#authenticate"
  delete 'session/logout'
  resources :comments
  resources :ratings
  resources :events
  resources :movies
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#                           Prefix Verb   URI Pattern                                                                              Controller#Action
#                           root GET    /                                                                                        movies#home
#                          lists GET    /lists(.:format)                                                                         lists#index
#                                POST   /lists(.:format)                                                                         lists#create
#                       new_list GET    /lists/new(.:format)                                                                     lists#new
#                      edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                           list GET    /lists/:id(.:format)                                                                     lists#show
#                                PATCH  /lists/:id(.:format)                                                                     lists#update
#                                PUT    /lists/:id(.:format)                                                                     lists#update
#                                DELETE /lists/:id(.:format)                                                                     lists#destroy
#                         signup GET    /signup(.:format)                                                                        session#signup
#                          login GET    /login(.:format)                                                                         session#login
#                                POST   /login(.:format)                                                                         sessions#authenticate
#                 session_logout DELETE /session/logout(.:format)                                                                session#logout
#                       comments GET    /comments(.:format)                                                                      comments#index
#                                POST   /comments(.:format)                                                                      comments#create
#                    new_comment GET    /comments/new(.:format)                                                                  comments#new
#                   edit_comment GET    /comments/:id/edit(.:format)                                                             comments#edit
#                        comment GET    /comments/:id(.:format)                                                                  comments#show
#                                PATCH  /comments/:id(.:format)                                                                  comments#update
#                                PUT    /comments/:id(.:format)                                                                  comments#update
#                                DELETE /comments/:id(.:format)                                                                  comments#destroy
#                        ratings GET    /ratings(.:format)                                                                       ratings#index
#                                POST   /ratings(.:format)                                                                       ratings#create
#                     new_rating GET    /ratings/new(.:format)                                                                   ratings#new
#                    edit_rating GET    /ratings/:id/edit(.:format)                                                              ratings#edit
#                         rating GET    /ratings/:id(.:format)                                                                   ratings#show
#                                PATCH  /ratings/:id(.:format)                                                                   ratings#update
#                                PUT    /ratings/:id(.:format)                                                                   ratings#update
#                                DELETE /ratings/:id(.:format)                                                                   ratings#destroy
#                         events GET    /events(.:format)                                                                        events#index
#                                POST   /events(.:format)                                                                        events#create
#                      new_event GET    /events/new(.:format)                                                                    events#new
#                     edit_event GET    /events/:id/edit(.:format)                                                               events#edit
#                          event GET    /events/:id(.:format)                                                                    events#show
#                                PATCH  /events/:id(.:format)                                                                    events#update
#                                PUT    /events/:id(.:format)                                                                    events#update
#                                DELETE /events/:id(.:format)                                                                    events#destroy
#                         movies GET    /movies(.:format)                                                                        movies#index
#                                POST   /movies(.:format)                                                                        movies#create
#                      new_movie GET    /movies/new(.:format)                                                                    movies#new
#                     edit_movie GET    /movies/:id/edit(.:format)                                                               movies#edit
#                          movie GET    /movies/:id(.:format)                                                                    movies#show
#                                PATCH  /movies/:id(.:format)                                                                    movies#update
#                                PUT    /movies/:id(.:format)                                                                    movies#update
#                                DELETE /movies/:id(.:format)                                                                    movies#destroy
#                          users GET    /users(.:format)                                                                         users#index
#                                POST   /users(.:format)                                                                         users#create
#                       new_user GET    /users/new(.:format)                                                                     users#new
#                      edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                           user GET    /users/:id(.:format)                                                                     users#show
#                                PATCH  /users/:id(.:format)                                                                     users#update
#                                PUT    /users/:id(.:format)                                                                     users#update
#                                DELETE /users/:id(.:format)                                                                     users#destroy
