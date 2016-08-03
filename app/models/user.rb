class User < ActiveRecord::Base
  has_many :appointments, primary_key: :student_id
  has_many :appointments, primary_key: :mentor_id
  has_many :reviews, primary_key: :author_id
  has_many :reviews, primary_key: :subject_id
end
