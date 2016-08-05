class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer  :student_id
      t.integer  :mentor_id, null: false
      t.datetime :appointment_time, null: false
      t.text     :message

      t.timestamps
    end
  end
end

