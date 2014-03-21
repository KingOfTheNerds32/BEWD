Rainpocalypse::Application.routes.draw do
  get '/getphonenumbers' => 'wayne#phonenumbers'
  get '/help' => 'help#home'
  get '/createcontact' => 'help#createcontact'
end
