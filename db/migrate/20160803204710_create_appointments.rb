class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :student_id
      t.integer :mentor_id
      t.time :appointment_time
      t.text :message

      t.timestamps
    end
  end
end
