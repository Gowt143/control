Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "/destroy" => 'logins#destroy', as: 'logins_destroy'
  root "remotes#index"
  resource :remote
  resources :users
  resources :logins
end
