Bootblog::Application.routes.draw do
  get '/posts' => 'posts#index'
  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/posts/:post_id_number' => 'posts#show'
end
