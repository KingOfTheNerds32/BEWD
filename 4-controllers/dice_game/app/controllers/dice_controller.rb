class DiceController < ApplicationController
	def roll
		@my_roll = rand(1..6)
		@computer_roll = rand(1..6)

		if @my_roll > @computer_roll
			@result = 'I win!'
		elsif @my_roll == @computer_roll
			@result = "We tied, so the house wins!"
		else
			@result = "You win :("
		end	

		render :roll
	end
end