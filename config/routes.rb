Rails.application.routes.draw do
  resources :session, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'
match '/signout', to: 'sessions#destroy',     via: 'delete'

end
