class UsersController < ApplicationController

  def index
    @appointments = Appointment.all
    p "****"
    p @appointments
  end

  def new
  end

  def index
    redirect_to '/login'
  end

  def create
    @user = User.new(user_params)
  	if @user.save
      session[:user_id] = @user.id
    	redirect_to '/profile'
  	else
    	render 'new'
  	end
  end

  def show
    @user = User.find(session[:user_id])
    @appointments = Appointment.where("mentor_id = ? OR student_id = ?", @user.id, @user.id)
    @past_appointments = Appointment.where("appointment_time < ?", Time.now)
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :role)
  end

end
