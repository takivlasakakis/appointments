class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer  :author_id, null: false
      t.integer  :subject_id, null: false
      t.integer  :stars, null: false
      t.text     :body, null: false
      t.integer  :appointment_id, null: false

      t.timestamps
    end
  end
end
