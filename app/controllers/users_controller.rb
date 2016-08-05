class UsersController < ApplicationController

  def index 
    @appointments = Appointment.all
    p "****"
    p @appointments
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
