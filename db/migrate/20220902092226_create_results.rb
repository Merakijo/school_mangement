class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :exam_category_id
      t.integer :student_id
      t.integer :subject_id
      t.integer :marks
    end
  end
end
