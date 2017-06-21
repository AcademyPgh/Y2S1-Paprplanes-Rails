Rails.application.routes.draw do
  resources :post_accesses
  resources :users
  resources :user_friends
  resources :posts

  post 'friends', to: 'user_friends#show'
  get 'postfeed/:UserID', to: 'posts#show'
  post 'userlogin', to: 'users#login'
  post 'signup', to: 'users#create'
  post 'postfeed', to: 'posts#show'
  post 'userLoad', to: 'users#userLoad'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
