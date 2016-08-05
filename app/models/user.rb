class User < ActiveRecord::Base
  has_many :appointments, foreign_key: "student_id"
  has_many :appointments, foreign_key: "mentor_id"
  has_many :reviews, foreign_key: "author_id"
  has_many :reviews, foreign_key: "subject_id"

  validates :username, :email, :password_digest, :role, presence: true
  validates :username, :email, uniqueness: true
  has_secure_password

  before_save do
    self.role = self.role.downcase
    self.email = self.email.downcase
  end
end
