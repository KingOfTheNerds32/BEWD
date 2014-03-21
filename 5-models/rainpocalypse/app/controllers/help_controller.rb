class HelpController < ApplicationController

	def home

	end

	def createcontact
		Contact.create(:phone => params[:phone])
		#render :home
		redirect_to :help
	end
end
