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
    if @role == "Student"
      redirect_to '/student'
    end

  end

  def create
    @appointment = Appointment.new(appt_mentor_params)
    if @appointment.save
      redirect_to '/appointments/success'
    else
      render 'new'
    end
  end

  def student
  end

  def success
    @appointment = Appointment.last
    @mentor_id = @appointment.mentor_id
    @mentor = User.find(@mentor_id).username
    @student_id = @appointment.student_id

  end

  private
  def appt_mentor_params
    params.require(:appointment).permit(:student_id,:mentor_id,:appointment_time,:message)
  end

end
