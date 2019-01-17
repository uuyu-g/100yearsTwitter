Rails.application.routes.draw do
  root 'posts#index'
  get '/' => 'posts#index'

  get '/about' => 'home#about'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get 'posts/index' => 'posts#index'
  post 'posts/create' => 'posts#create'
end
