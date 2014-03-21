class SessionsController < ApplicationController
	def new

	end
	def create
		cookies[:user_id] = Person.find_by_email(params[:email]).id
		redirect_to '/'
	end
end