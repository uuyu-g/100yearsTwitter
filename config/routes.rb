Rails.application.routes.draw do
  constraints ->  request { request.session[:user_id].present? } do
    # ログインしてる時のパス
    root 'posts#index'
  end
  # ログインしてない時のパス
  root 'home#about'

  get '/about'  => 'home#about'
  get 'login'   => 'users#login_form'
  post 'logout' => 'users#logout'
  post 'login'  => 'users#login'
  post 'posts/create' => 'posts#create'

  resources :users
  resources :posts
end
