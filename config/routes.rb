Rails.application.routes.draw do
  get 'tags/trending', to: 'tags#trending'
  get 'tags/most_popular', to: 'tags#most_popular'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create', as: 'sessions'
  delete '/logout',  to: 'sessions#destroy'

  resources :users, only: [:new, :create, :index, :show] do
    # get "/comments", to: 'comments#edit'
    # patch "/comments", to: 'comments#update'
    # delete "/comments", to: 'comments#destroy'
  end

  resources :pictures do
    get "/comments", to: 'comments#new'
    post "/comments", to: 'comments#create'
  end
  # resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
