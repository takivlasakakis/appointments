class ReviewsController < ApplicationController
	def new
	  @review = Review.new
	end

	def create
	  @review = Review.new(user_params)
		
	end

	def show
	  @review = Review.find(params[:id])
	end
end
