class GamesController < ApplicationController
	def rockpaperscissors
		@username = params[:username]
		@points = Score.find(1).points
		@bet = params[:bet]
	end

	def play_rps
		@username = params[:username]
		@points = Score.find(1).points.to_i
		@bet = params[:bet].to_i
		@my_weapon = params[:weapon]
		game_options = ['rock', 'paper', 'scissors']
		game_rules = {'rock_paper' => 'paper', 'paper_scissors' => 'scissors', 'rock_scissors' => 'rock'}
		@comp_weapon = game_options.sample
		if @my_weapon == @comp_weapon
			@game_result = "It's a tie! Sucks for you that the house always wins!"
			@new_score = @points
		else
			winning_play = game_rules[@my_weapon + "_" + @comp_weapon]
			if @comp_weapon == winning_play
				@game_result = "I have destroyed your puny attempts at victory!"
				@new_score = @points - @bet
			else
				@game_result = "I suppose you've won this round."
				@new_score = @points - @bet
			end
		end
	end
end