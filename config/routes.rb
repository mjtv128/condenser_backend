Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  get "articles/business", to: "articles#business"
  get "articles/entertainment", to: "articles#entertainment"
  get "articles/general", to: "articles#general"
  get "articles/health", to: "articles#health"
  get "articles/science", to: "articles#science"
  get "articles/sports", to: "articles#sports"
  get "articles/technology", to: "articles#technology"

  # namespace :api do 
  #   namespace :v1 do 
  #     resources :users, only: [:create, :index]
  #     post '/login', to: 'auth#create'
  #     get '/profile', to: 'users#profile'
  #   end
  # end

  post '/login', to: 'users#login'
  get 'comments/:article_name', to: "comments#show_by_article_name"
  post '/comments', to: 'comments#create'
  get '/comments', to: 'comments#index'
  # get '/comments', to: 'comments#create'

resources :articles
  post '/articles/save', to: 'articles#create'
  get 'articles/save/:article_name', to: 'articles#show'
  get '/articles', to: 'articles#index'

  resources :stories
  # resources :users
get '/validate', to: 'users#validate'
end
