class TasksController < ApplicationController

	def tasks
		@tasks = Task.all
	end

	def new

	end

	def create
		Task.create(:description => params[:description], :done => false)
		redirect_to "/tasks"
	end
end