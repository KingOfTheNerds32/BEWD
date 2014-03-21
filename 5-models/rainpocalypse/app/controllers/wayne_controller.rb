class WayneController < ApplicationController
	def phonenumbers
		@contacts = Contact.all
	end
end