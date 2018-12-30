Rails.application.routes.draw do
  get '/' => 'home#top'

  get 'posts/index' => 'posts#index'
  post 'posts/create' => 'posts#create'
end
