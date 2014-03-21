Todo::Application.routes.draw do
  get '/tasks' => 'tasks#tasks'
  get '/tasks/new' => 'tasks#new'
  get '/tasks/create' => 'tasks#create'
end
