Bestblog::Application.routes.draw do
  root to: 'posts#index'
  post '/posts' => 'posts#create'
  get '/posts/new' => 'posts#new'
  get '/posts/:id' => 'posts#show'
  get '/login' => 'sessions#new'
  post '/login' => 'session#create'
end
