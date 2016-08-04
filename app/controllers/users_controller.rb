class UsersController < ApplicationController

  def new
  end

  def index
    redirect_to '/login'
  end

  def create
    @user = User.new(user_params)
  	if @user.save
    	redirect_to '/login'
  	else
    	render 'new'
  	end
  end

  def show
    @user = User.find(session[:user_id])
    @appointments = Appointment.where("mentor_id = ? OR student_id = ?", @user.id, @user.id)
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :role)
  end

end
