require 'sinatra'


#states = {"CA" => "Sacramento", "WA" => "Olypmia", "ID" => "Boise" , "OR" => "Salem", "NV" => "Reno"}
states = {"Oregon" => "Salem", "Washington" => "Olympia", "California" => "Sacramento"}

get '/' do
  @state = states.keys.sample
  erb :guess
end

get '/make_answer' do
  user_guess = params[:user_guess].upcase
  @state = params[:state]
  if user_guess == states[@state].upcase
    #return 'Right!' #it is not required to say 'return'
    erb :right_answer
  else
    #return 'Wrong! You lose!'
    erb :wrong_answer
  end
end