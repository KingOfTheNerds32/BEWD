class GamesController < ApplicationController
	def new

	end

	def play
		@my_weapon = params[:weapon]
		game_options = ['rock', 'paper', 'scissors']
		game_rules = {'rock_paper' => 'paper', 'paper_scissors' => 'scissors', 'rock_scissors' => 'rock'}
		@comp_weapon = game_options.sample
		if @my_weapon == @comp_weapon
			#@game_result = "It's a tie! Sucks for you that the house always wins!"
			render :tie
		else
			winning_play = game_rules[@my_weapon + "_" + @comp_weapon]
			if @comp_weapon == winning_play
				#@game_result = "I have destroyed your puny attempts at victory!"
				render :computer_win
			else
				#@game_result = "I suppose you've won this round."
				render :player_win
			end
		end
	end
end
