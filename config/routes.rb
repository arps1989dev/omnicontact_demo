Rails.application.routes.draw do
 
 	root to: "home#show"

 	get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users/:importer/contact_callback" => "users#index"
  get "/contacts/failure" => "users#failure"

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

end
