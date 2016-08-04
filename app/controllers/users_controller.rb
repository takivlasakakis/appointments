class UsersController < ApplicationController

  def index
    @mentors = User.where(role: "mentor")
    @students = User.where(role: "student")
    @open_appointments = Appointment.where(student_id: nil)
  end

  def new
  end

  def create
    @user = User.new(user_params)
  	if @user.save
    	redirect_to @user
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
