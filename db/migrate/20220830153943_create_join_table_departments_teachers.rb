class CreateJoinTableDepartmentsTeachers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :departments, :teachers do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
