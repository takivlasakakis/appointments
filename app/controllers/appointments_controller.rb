class AppointmentsController < ApplicationController

  def index
    @mentors = User.where(role: "mentor")
    @students = User.where(role: "student")
    @open_appointments = Appointment.where(student_id: nil)
    p "$" * 150
    p session[:user_id]
    p current_user
    p "*" * 150
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
  end

end
