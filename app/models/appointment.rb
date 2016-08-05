class Appointment < ActiveRecord::Base
  belongs_to :student, class_name: "User", foreign_key: "student_id"
  belongs_to :mentor, class_name: "User", foreign_key: "mentor_id"
  has_many :reviews

  def start_time
  	self.appointment_time
  end 
  
end
