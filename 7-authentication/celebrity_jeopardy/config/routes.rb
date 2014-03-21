CelebrityJeopardy::Application.routes.draw do
  root to: 'contestants#index'
  get '/contestants' => 'contestants#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  get '/questions' => 'questions#index'
  get '/answers' => 'answers#show'
  get '/result' => 'answers#result'
end
