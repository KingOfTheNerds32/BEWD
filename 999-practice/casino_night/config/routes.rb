CasinoNight::Application.routes.draw do
  get '/' => 'main#welcome'
  get '/newgame' => 'main#newgame'
  get '/creategame' => 'main#creategame'
  get '/rockpaperscissors' => 'games#rockpaperscissors'
  get '/play_rps' => 'games#play_rps'
end
