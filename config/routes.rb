Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/posts/:id", to: "posts#show"
  post "/posts", to: "posts#create"
  put "/posts/:id", to: "posts#update"
  patch "/posts/:id", to: "posts#update"
  delete "/posts/:id", to: "posts#destroy"


  # Defines the root path route ("/")
  root "posts#index"
end
