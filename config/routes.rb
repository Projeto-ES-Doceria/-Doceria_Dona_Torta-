Rails.application.routes.draw do
  resources :ingredientes
  resources :produtos
  resources :clientes
  resources :enderecos
  resources :usuarios

  get "/signup", to: "usuarios#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

  resources :agendas
  root 'agendas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
