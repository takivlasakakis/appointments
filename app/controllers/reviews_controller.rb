class ReviewsController < ApplicationController

	def new
	  @review = Review.new
	end

	def create
	  @review = Review.new(user_params)
		@review.author_id = current_user.id
		redirect_to reviews_path
	end

	def show
	  @review = Review.find(params[:id])
	end

	private
	def user_params
		params.require(:reviews).permit(:author_id, :subject_id, :stars, :body, :appointment_id)
	end
end
