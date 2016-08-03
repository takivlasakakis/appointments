class User < ActiveRecord::Base
  has_many :appointments, foreign_key: "student_id"
  has_many :appointments, foreign_key: "mentor_id"
  has_many :reviews, foreign_key: "author_id"
  has_many :reviews, foreign_key: "subject_id"

  has_secure_password
	USER_LIST =[Student, Mentor, Administrator]

end
