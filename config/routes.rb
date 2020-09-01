Rails.application.routes.draw do
  root 'messages#index'

  get "messages/index", to: "messages#index"
  post "messages/create", to: "messages#create"
  get "messages/:id/edit", to: "messages#edit", as: "messages_edit"
  patch "messages/:id/update", to: "messages#update", as: "messages_update"
  delete "messages/:id/destroy", to: "messages#destroy", as: "messages_destroy"
  
  root 'users#index'
  get "users/index", to: "users#index"
  post "users/create", to: "users#create"
end