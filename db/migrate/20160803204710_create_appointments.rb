class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer  :student_id
      t.integer  :mentor_id, null: false
      t.datetime :appointment_time, null: false
      t.text     :message

      t.timestamps, null: false
    end
  end
end


 #  <ul>
 #  <% @past_appointments.each do |appoint|%>
 #  <br><li><a href="/appointments/<%=appoint.id%>"><%= appoint.appointment_time %></a></li>
 #  Assigned Mentor: <%= User.find(appoint.mentor_id).username %><br>
 #   <% if appoint.student_id == nil %>
 #  Assigned Student: <%= p "not yet determined" %><br>
 #  Message: <%= appoint.message %>
 # <% else %>
 #  Assigned Student: <%= User.find(appoint.mentor).username %>
 # <% end %><br>

 #  <% end %></ul>