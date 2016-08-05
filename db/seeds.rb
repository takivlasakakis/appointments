# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# two users, one student, one user

# two reviews - student to mentor, mentor on student

# one appointment


User.create(:username => "Donny Trump", :password_digest => "trump2016", :email => "trump2016@trump.com",:role => "Student")
User.create(:username => "Hillary", :password_digest => "hillary2016", :email => "hillary2016@hillary.com",:role => "Mentor")
User.create(:username => "Walker", :password_digest => "1234", :email => "walker@dbc.com",:role => "admin")
Appointment.create(:student_id => 1, :mentor_id => 2,:appointment_time => Time.now, :message => "My girl likes to party all the time")
Appointment.create(:student_id => 2, :mentor_id => 1,:appointment_time => Time.now, :message => "My boy likes to party all the time")
Review.create(:author_id => 1, :subject_id => 2, :stars => 4, :body => "This was a great session", :appointment_id => 1)
Review.create(:author_id => 2, :subject_id => 1, :stars => 3, :body => "This was an OK session", :appointment_id => 2)
