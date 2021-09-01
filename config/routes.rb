Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "posts#index"



 get "/posts", to: "posts#index"
  get "/posts/new", to: "posts#new"
  post "/posts", to: "posts#create"
  get "posts/:id", to: "posts#show", as: "post"

  delete '/posts/:id', to: 'posts#destroy', as: "delete"


end
