class ReviewsController < ApplicationController

	def new
		@appointments = Appointment.find(1)
	  @review = Review.new
	end

	def create
<<<<<<< HEAD
	  @review = Review.new(user_params)
		@review.author_id = current_user.id
		redirect_to reviews_path
	end

	def show
	  @review = Review.find(params[:id])
	end

	private
	def user_params
		params.require(:review).permit(:author_id, :subject_id, :stars, :body, :appointment_id)
	end
=======

>>>>>>> 92d15d45e3f1b90c24a619ceaebf79837aec48e2
end
