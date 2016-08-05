class ReviewsController < ApplicationController

	def new

	@appointments = Appointment.find_by(params[:id])
	  @review = Review.new
	end

	def create
	  @review = Review.create(user_params)
		@review.author_id = current_user.id
		redirect_to reviews_path
	end

	def show
	  @review = Review.find_by(params[:author_id])
	end

	def index
		@review = Review.where(subject_id:current_user.id)
		@review_for_me = Review.where(author_id:current_user.id) 
	end

	private
	def user_params
		params.require(:review).permit(:author_id, :subject_id, :stars, :body, :appointment_id)
	end
end
