RockPaperScissors::Application.routes.draw do
  get '/newgame' => 'games#new'

  get 'play' => 'games#play'
end
