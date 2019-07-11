Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  resources :microposts

  root 'home#top'
  get '/',      to: 'home#top'
  get '/about', to: 'home#about'

  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
