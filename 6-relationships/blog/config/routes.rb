Blog::Application.routes.draw do
  get '/blog' => 'blog#list'
  get '/blog/new' => 'blog#new'
  post '/blog/create' => 'blog#create'
  get '/blog/post' => 'blog#showpost'
  get '/blog/post/next' => 'blog#next'
  get '/blog/post/prev' => 'blog#prev'
end
