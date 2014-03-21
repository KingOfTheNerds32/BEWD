class SessionController < ApplicationController
	def new

	end
	def create
		contestant = Contestant.find_by_email(params[:email])
		if contestant && contestant.authenticate(params[:password])
			flash[:info] = "Logged in successfully"
			session[:contestant_id] = contestant.id
			redirect_to '/'
		else
			flash[:info] = "Invalid credentials"
			redirect_to '/login'
		end  
	end
	def destroy
		session[:contestant_id] = nil
		flash[:info] = 'logged out'
		redirect_to '/'
	end
end