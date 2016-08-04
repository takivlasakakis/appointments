class UsersController < ApplicationController

  # def profile
  #   @user = current_user
  #   redirect :'/users/show'
  # end

  def new
  end

  def index
    redirect_to '/sessions/new'
  end

  def create
    @user = User.new(user_params)
  	if @user.save
    	redirect_to '/sessions/new'
  	else
    	render 'new'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :role)
  end




end
