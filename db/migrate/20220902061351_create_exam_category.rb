class CreateExamCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_categories do |t|
      t.string :category
      t.float :weightage
      t.integer :maximum_marks
      t.integer :minimum_marks
    end
  end
end
