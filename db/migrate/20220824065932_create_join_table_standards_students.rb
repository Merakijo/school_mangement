class CreateJoinTableStandardsStudents < ActiveRecord::Migration[6.0]
  def change
    create_join_table :students, :standards do |t|
      # t.index [:student_id, :standard_id]
      # t.index [:standard_id, :student_id]
    end
  end
end
