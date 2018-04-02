Rails.application.routes.draw do
  resources :wishlist_items
  resources :items
  resources :wishlists
  resources :user_events
  resources :events
  resources :users
  post '/login', to: "auth#create"
  get '/current_user', to: "auth#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
