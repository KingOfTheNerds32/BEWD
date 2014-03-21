class MainController < ApplicationController
	def welcome

	end
	def newgame

	end
	def creategame
		@username = params[:username].capitalize
		@points = 10
		Score.create(:username => @username, :points => 10)
		render :choosegame
	end
	def choosegame
		
	end
end
