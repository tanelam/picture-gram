Rails.application.routes.draw do
  get 'tags/trending', to: 'tags#trending'
  get 'tags/most_popular', to: 'tags#most_popular'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create', as: 'sessions'
  delete '/logout',  to: 'sessions#destroy'

  resources :users


  resources :pictures do
    get "/comments", to: 'comments#new'
    post "/comments", to: 'comments#create'
    get  "/comments/:id/edit", to: 'comments#edit'
    delete "/comments/:id", to: 'comments#destroy'
  end
   # resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
