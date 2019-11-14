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

#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                                  root GET    /                                                                                        movies#home
#                                 lists GET    /lists(.:format)                                                                         lists#index
#                                       POST   /lists(.:format)                                                                         lists#create
#                              new_list GET    /lists/new(.:format)                                                                     lists#new
#                             edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                                  list GET    /lists/:id(.:format)                                                                     lists#show
#                                       PATCH  /lists/:id(.:format)                                                                     lists#update
#                                       PUT    /lists/:id(.:format)                                                                     lists#update
#                                       DELETE /lists/:id(.:format)                                                                     lists#destroy
#                        session_signup GET    /session/signup(.:format)                                                                session#signup
#                         session_login GET    /session/login(.:format)                                                                 session#login
#                        session_logout DELETE /session/logout(.:format)                                                                session#logout
#                              comments GET    /comments(.:format)                                                                      comments#index
#                                       POST   /comments(.:format)                                                                      comments#create
#                           new_comment GET    /comments/new(.:format)                                                                  comments#new
#                          edit_comment GET    /comments/:id/edit(.:format)                                                             comments#edit
#                               comment GET    /comments/:id(.:format)                                                                  comments#show
#                                       PATCH  /comments/:id(.:format)                                                                  comments#update
#                                       PUT    /comments/:id(.:format)                                                                  comments#update
#                                       DELETE /comments/:id(.:format)                                                                  comments#destroy
#                               ratings GET    /ratings(.:format)                                                                       ratings#index
#                                       POST   /ratings(.:format)                                                                       ratings#create
#                            new_rating GET    /ratings/new(.:format)                                                                   ratings#new
#                           edit_rating GET    /ratings/:id/edit(.:format)                                                              ratings#edit
#                                rating GET    /ratings/:id(.:format)                                                                   ratings#show
#                                       PATCH  /ratings/:id(.:format)                                                                   ratings#update
#                                       PUT    /ratings/:id(.:format)                                                                   ratings#update
#                                       DELETE /ratings/:id(.:format)                                                                   ratings#destroy
#                                events GET    /events(.:format)                                                                        events#index
#                                       POST   /events(.:format)                                                                        events#create
#                             new_event GET    /events/new(.:format)                                                                    events#new
#                            edit_event GET    /events/:id/edit(.:format)                                                               events#edit
#                                 event GET    /events/:id(.:format)                                                                    events#show
#                                       PATCH  /events/:id(.:format)                                                                    events#update
#                                       PUT    /events/:id(.:format)                                                                    events#update
#                                       DELETE /events/:id(.:format)                                                                    events#destroy
#                                movies GET    /movies(.:format)                                                                        movies#index
#                                       POST   /movies(.:format)                                                                        movies#create
#                             new_movie GET    /movies/new(.:format)                                                                    movies#new
#                            edit_movie GET    /movies/:id/edit(.:format)                                                               movies#edit
#                                 movie GET    /movies/:id(.:format)                                                                    movies#show
#                                       PATCH  /movies/:id(.:format)                                                                    movies#update
#                                       PUT    /movies/:id(.:format)                                                                    movies#update
#                                       DELETE /movies/:id(.:format)                                                                    movies#destroy
#                                 users GET    /users(.:format)                                                                         users#index
#                                       POST   /users(.:format)                                                                         users#create
#                              new_user GET    /users/new(.:format)                                                                     users#new
#                             edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                                  user GET    /users/:id(.:format)                                                                     users#show
#                                       PATCH  /users/:id(.:format)                                                                     users#update
#                                       PUT    /users/:id(.:format)                                                                     users#update
#                                       DELETE /users/:id(.:format)                                                                     users#destroy
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
