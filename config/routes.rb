Rails.application.routes.draw do
  get '/' => 'home#top'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get 'posts/index' => 'posts#index'
  post 'posts/create' => 'posts#create'
end
