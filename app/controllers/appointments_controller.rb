class AppointmentsController < ApplicationController

	def index 
		@appointments ||= Appointment.all
	end 

	def new 
	end 

end
