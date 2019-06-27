Rails.application.routes.draw do
  resources :microposts

  root 'home#top'
  get 'home/top'
  get 'home/about'

  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
