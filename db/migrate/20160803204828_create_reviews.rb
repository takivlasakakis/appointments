class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :author_id
      t.integer :subject_id
      t.integer :stars
      t.text :body
      t.integer :appointmet_id

      t.timestamps
    end
  end
end
