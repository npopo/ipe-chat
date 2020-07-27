Rails.application.routes.draw do

  get "messages/index", to: "messages#index"
  get "", to: "messages#index"


end
