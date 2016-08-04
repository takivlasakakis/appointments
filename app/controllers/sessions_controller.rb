  class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/sessions/show'
    else
      redirect_to '/login'
    end
  end

  def show
    p ">>>>>>>>>>>>>>>>>>>"
    p @current_user
    p current_user
    @user = @current_user
    @appointments = Appointment.where('student_id = ? OR mentor_id = ?', @current_user.id, @current_user.id)
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
