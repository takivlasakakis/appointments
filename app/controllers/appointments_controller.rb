class AppointmentsController < ApplicationController

  def index
    @mentors = User.where(role: "mentor")
    @students = User.where(role: "student")
    @open_appointments = Appointment.where(student_id: nil)
  end

  def new
    @appointment = Appointment.new
    @user = session[:user_id]
    @role = User.find(@user).role

    #If user is a student, will not let them create time slot
    if @role == "student"
      redirect_to '/appointments'
    end

  end

  def create
    @appointment = Appointment.new(appt_mentor_params)
    if @appointment.save
      redirect_to "/appointments/#{@appointment.id}"
    else
      render 'new'
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @user = session[:user_id]
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @user = session[:user_id]
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appt_mentor_params)
      redirect_to '/appointments/'
    else
      render 'edit'
    end
  end

  private
  def appt_mentor_params
    params.require(:appointment).permit(:student_id,:mentor_id,:appointment_time,:message)
  end


end
