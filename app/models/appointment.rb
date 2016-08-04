class Appointment < ActiveRecord::Base
  belongs_to :student, class_name: "User", foreign_key: "student_id"
  belongs_to :mentor, class_name: "User", foreign_key: "mentor_id"
  has_many :reviews

  # validates :username, :email, :password_digest, :role, presence: true

end
